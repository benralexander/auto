package auto

import grails.plugins.rest.client.RestBuilder
import grails.plugins.rest.client.RestResponse
import grails.transaction.Transactional
import org.apache.juli.logging.LogFactory
import org.codehaus.groovy.grails.commons.GrailsApplication
import org.codehaus.groovy.grails.web.json.JSONObject

@Transactional
class RestServerService {
    GrailsApplication grailsApplication
    private static final log = LogFactory.getLog(this)



    private  String BASE_URL = ""
    private  String HEARTBEAT_URL = "heartbeat"
    private  String PING_VERSION_URL = "system/determineVersion"

    public enum Server {
        test(0), udev(1), uqa(2), uprod(3), bdev(1), bqa(2), bprod(3),
        t2dProd(4),t2dQa(5),t2dDev(6),t2dCi(7),
        sigmaProd(8),sigmaQa(9),sigmaDev(10);
        static Server  getServerById (int id)  {
            Server server
            switch (id)  {
                case 0:  server = Server.test; break;
                case 1:  server = Server.udev; break;
                case 2:  server = Server.uqa; break;
                case 3:  server = Server.uprod; break;
                case 4:  server = Server.t2dProd; break;
                case 5:  server = Server.t2dQa; break;
                case 6:  server = Server.t2dDev; break;
                case 7:  server = Server.t2dCi; break;
                case 8:  server = Server.sigmaProd; break;
                case 9:  server = Server.sigmaQa; break;
                case 10:  server = Server.sigmaDev; break;
                case 11:  server = Server.bdev; break;
                case 12:  server = Server.bqa; break;
                case 13:  server = Server.bprod; break;

                default: server = Server.test;
            }
            return server
        }
        Server(int id) { this.id = id }
        private final int id
        public int id() { return id }
    }


    /***
     * plug together the different collections of column specifications we typically use
     */
    public void initialize (){
        BASE_URL =  grailsApplication.config.server.URL;

    }


    private deriveServerUrl (Server server)  {
        String url = ""
        switch (server) {
            case  Server.test:
                url =  grailsApplication.config.t2dUbDeServer.base+grailsApplication.config.t2dUbDeServer.name+grailsApplication.config.t2dUbDeServer.path
                break;
            case  Server.udev:
                url =  grailsApplication.config.t2dUbDevServer.base+grailsApplication.config.t2dUbDevServer.name+grailsApplication.config.t2dUbDevServer.path
                break;
            case  Server.uqa:
                url =  grailsApplication.config.t2dUbQaServer.base+grailsApplication.config.t2dUbQaServer.name+grailsApplication.config.t2dUbQaServer.path
                break;
            case  Server.uprod:
                url =  grailsApplication.config.t2dProdRestServer.base+grailsApplication.config.t2dProdRestServer.name+grailsApplication.config.t2dProdRestServer.path
                break;
            case  Server.bdev:
                url =  grailsApplication.config.t2dDevRestServer.base+grailsApplication.config.t2dDevRestServer.name+grailsApplication.config.t2dDevRestServer.path
                break;
            case  Server.bqa:
                url =  grailsApplication.config.t2dQaRestServer.base+grailsApplication.config.t2dQaRestServer.name+grailsApplication.config.t2dQaRestServer.path
                break;
            case  Server.bprod:
                url =  grailsApplication.config.t2dTestRestServer.base+grailsApplication.config.t2dTestRestServer.name+grailsApplication.config.t2dTestRestServer.path
                break;
            case Server.t2dProd:
                url =  grailsApplication.config.mpgPortal.t2dProd
                break;
            case Server.t2dQa:
                url =  grailsApplication.config.mpgPortal.t2dQa
                break;
            case Server.t2dDev:
                url =  grailsApplication.config.mpgPortal.t2dDev
                break;
            case Server.t2dCi:
                url =  grailsApplication.config.mpgPortal.t2dCi
                break;
            case Server.sigmaProd:
                url =  grailsApplication.config.mpgPortal.sigmaProd
                break;
            case Server.sigmaQa:
                url =  grailsApplication.config.mpgPortal.sigmaQa
                break;
            case Server.sigmaDev:
                url =  grailsApplication.config.mpgPortal.sigmaDev
                break;
            default :
                log.error("Attempted to connect to unexpected server = ${server.toString()}")
                break;

        }
        return url;
    }



    /***
     * This is the underlying routine for every call to the rest backend.
     * @param drivingJson
     * @param targetUrl
     * @return
     */
    private Integer getRestCall(String targetUrl, Server server){
        Integer returnValue = null
        Date beforeCall  = new Date()
        Date afterCall
        RestResponse response
        RestBuilder rest = new grails.plugins.rest.client.RestBuilder()
        StringBuilder logStatus = new StringBuilder()
        try {
            response  = rest.get(deriveServerUrl (server)+targetUrl)   {
                contentType "application/json"
            }
            afterCall  = new Date()
        } catch ( Exception exception){
            log.error("NOTE: exception on post to backend. Target=${targetUrl}")
            log.error(exception.toString())
            logStatus <<  "NOTE: exception on post to backend. Target=${targetUrl}"
            afterCall  = new Date()
        }
        logStatus << """
SERVER CALL:
url=${targetUrl},
time required=${(afterCall.time-beforeCall.time)/1000} seconds
""".toString()
        returnValue =  response?.responseEntity?.statusCode?.value
        if (response?.responseEntity?.statusCode?.value == 200) {
            returnValue =  response.json
            logStatus << """status: ok""".toString()
        }  else {
            JSONObject tempValue =  response?.json
            logStatus << """status: ${response?.responseEntity?.statusCode?.value}""".toString()
            if  (tempValue)  {
                logStatus << """is_error: ${response.json["is_error"]}""".toString()
            }  else {
                logStatus << "no valid Json returned"
            }
        }
        log.info(logStatus)
        return returnValue
    }




    /***
     * This is the underlying routine for every call to the rest backend.
     * @param drivingJson
     * @param targetUrl
     * @return
     */
    private JSONObject postRestCall(String drivingJson, String targetUrl, Server server){
        JSONObject returnValue = null
        Date beforeCall  = new Date()
        Date afterCall
        RestResponse response
        RestBuilder rest = new grails.plugins.rest.client.RestBuilder()
        StringBuilder logStatus = new StringBuilder()
        try {
            response  = rest.post(deriveServerUrl (server)+targetUrl)   {
                contentType "application/json"
                json drivingJson
            }
            afterCall  = new Date()
        } catch ( Exception exception){
            log.error("NOTE: exception on post to backend. Target=${targetUrl}, driving Json=${drivingJson}")
            log.error(exception.toString())
            logStatus <<  "NOTE: exception on post to backend. Target=${targetUrl}, driving Json=${drivingJson}"
            afterCall  = new Date()
        }
        logStatus << """
SERVER CALL:
url=${targetUrl},
parm=${drivingJson},
time required=${(afterCall.time-beforeCall.time)/1000} seconds
""".toString()
        if (response?.responseEntity?.statusCode?.value == 200) {
            returnValue =  response.json
            logStatus << """status: ok""".toString()
        }  else {
            JSONObject tempValue =  response?.json
            logStatus << """status: ${response?.responseEntity?.statusCode?.value}""".toString()
            if  (tempValue)  {
                logStatus << """is_error: ${response.json["is_error"]}""".toString()
            }  else {
                logStatus << "no valid Json returned"
            }
        }
        log.info(logStatus)
        return returnValue
    }



    /***
     * retrieve information about a gene specified by name
     *
     * @param geneName
     * @return
     */
    JSONObject retrieveGeneInfoByName (String geneName, Server server, Boolean sigma) {
        JSONObject returnValue = null
        returnValue = getRestCall(HEARTBEAT_URL,server)
        return returnValue
    }


    JSONObject retrieveVersionInfo (Server server) {
        JSONObject returnValue = null
        String drivingJson = ""
        returnValue = postRestCall( drivingJson, PING_VERSION_URL,server)
        return returnValue
    }



    public  Boolean testRestServer(Server server, Boolean sigma) {
        Integer returnValue
        returnValue = getRestCall(HEARTBEAT_URL,server)
        return (returnValue  == 200)
    }

    public  JSONObject pingWebServer(Server server) {
        JSONObject returnValue = null
//        JSONObject jsonObject = retrieveVersionInfo(server)
//        if (jsonObject != null) {
//            returnValue = jsonObject["info"]
//        }
        return returnValue
    }





}
