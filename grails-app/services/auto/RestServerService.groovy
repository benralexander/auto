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


    private  String MYSQL_REST_SERVER = ""
    private  String BIGQUERY_REST_SERVER = ""
    private  String TEST_REST_SERVER = ""
    private  String DEV_REST_SERVER = ""
    private  String QA_REST_SERVER = ""
    private  String PROD_REST_SERVER = ""
    private  String BASE_URL = ""
    private  String GENE_INFO_URL = "gene-info"


    public enum Server {
        test(0), dev(1), qa(2), prod(3)
        static Server  getServerById (int id)  {
            Server server
            switch (id)  {
            case 0:  server = Server.test; break;
            case 1:  server = Server.dev; break;
            case 2:  server = Server.qa; break;
            case 3:  server = Server.prod; break;
                default: server = Server.test;
            }
            return server
        }
        Server(int id) { this.id = id }
        private final int id
        public int id() { return id }
    }

    static List <String> VARIANT_SEARCH_COLUMNS = [
            'ID',
            'CHROM',
            'POS',
            'DBSNP_ID',
            'CLOSEST_GENE',
            'MOST_DEL_SCORE',
            'Consequence',
            'IN_GENE',
            '_13k_T2D_TRANSCRIPT_ANNOT',
            "Protein_change"
    ]


    static List <String> EXSEQ_VARIANT_SEARCH_COLUMNS = [
            'IN_EXSEQ',
            '_13k_T2D_P_EMMAX_FE_IV',
            '_13k_T2D_EU_MAF',
            '_13k_T2D_HS_MAF',
            '_13k_T2D_AA_MAF',
            '_13k_T2D_EA_MAF',
            '_13k_T2D_SA_MAF',
            '_13k_T2D_MINA',
            '_13k_T2D_MINU',
            '_13k_T2D_OR_WALD_DOS_FE_IV',
            '_13k_T2D_SE'
    ]


    static List <String> EXCHP_VARIANT_SEARCH_COLUMNS = [
            'IN_EXCHP',
            'EXCHP_T2D_P_value',
            'EXCHP_T2D_MAF',
            'EXCHP_T2D_BETA',
            'EXCHP_T2D_SE'
    ]


    static List <String> GWAS_VARIANT_SEARCH_COLUMNS = [
            'IN_GWAS',
            'GWAS_T2D_PVALUE',
            'GWAS_T2D_OR',
    ]


    static List <String> SIGMA_VARIANT_SEARCH_COLUMNS = [
            'SIGMA_T2D_P',
            'SIGMA_T2D_OR',
            'SIGMA_T2D_MINA',
            'SIGMA_T2D_MINU',
            'SIGMA_T2D_MAF',
            'SIGMA_SOURCE',
            'IN_SIGMA',
    ]





    static List <String> EXSEQ_VARIANT_COLUMNS = EXSEQ_VARIANT_SEARCH_COLUMNS + [
            '_13k_T2D_HET_ETHNICITIES',
            '_13k_T2D_HET_CARRIERS',
            '_13k_T2D_HETA',
            '_13k_T2D_HETU',
            '_13k_T2D_HOM_ETHNICITIES',
            '_13k_T2D_HOM_CARRIERS',
            '_13k_T2D_HOMA',
            '_13k_T2D_HOMU',
            '_13k_T2D_OBSA',
            '_13k_T2D_OBSU',
    ]

    static List <String> SIGMA_VARIANT_COLUMNS = SIGMA_VARIANT_SEARCH_COLUMNS + [
            'SIGMA_T2D_N',
            'SIGMA_T2D_MAC',
            'SIGMA_T2D_OBSA',
            'SIGMA_T2D_OBSU',
            'SIGMA_T2D_HETA',
            'SIGMA_T2D_HETU',
            'SIGMA_T2D_HOMA',
            'SIGMA_T2D_HOMU',
            'SIGMA_T2D_SE',
    ]


    static List <String> GENE_COLUMNS = [
            'ID',
            'CHROM',
            'BEG',
            'END',
            'Function_description',
    ]


    static List <String> EXSEQ_GENE_COLUMNS = [
            '_13k_T2D_VAR_TOTAL',
            '_13k_T2D_ORIGIN_VAR_TOTALS',
            '_13k_T2D_lof_NVAR',
            '_13k_T2D_lof_MINA_MINU_RET',
            '_13k_T2D_lof_METABURDEN',
            '_13k_T2D_GWS_TOTAL',
            '_13k_T2D_LWS_TOTAL',
            '_13k_T2D_NOM_TOTAL',
            '_13k_T2D_lof_OBSA',
            '_13k_T2D_lof_OBSU'
    ]


    static List <String> EXCHP_GENE_COLUMNS = [
            'EXCHP_T2D_VAR_TOTALS',
            'EXCHP_T2D_GWS_TOTAL',
            'EXCHP_T2D_LWS_TOTAL',
            'EXCHP_T2D_NOM_TOTAL',
    ]


    static List <String> GWAS_GENE_COLUMNS = [
            'GWS_TRAITS',
            'GWAS_T2D_GWS_TOTAL',
            'GWAS_T2D_LWS_TOTAL',
            'GWAS_T2D_NOM_TOTAL',
            'GWAS_T2D_VAR_TOTAL',
    ]


    static List <String> SIGMA_GENE_COLUMNS = [
            'SIGMA_T2D_VAR_TOTAL',
            'SIGMA_T2D_VAR_TOTALS',
            'SIGMA_T2D_NOM_TOTAL',
            'SIGMA_T2D_GWS_TOTAL',
            'SIGMA_T2D_lof_NVAR',
            'SIGMA_T2D_lof_MAC',
            'SIGMA_T2D_lof_MINA',
            'SIGMA_T2D_lof_MINU',
            'SIGMA_T2D_lof_P',
            'SIGMA_T2D_lof_OBSA',
            'SIGMA_T2D_lof_OBSU',
    ]

    /***
     * plug together the different collections of column specifications we typically use
     */
    public void initialize (){
        MYSQL_REST_SERVER = grailsApplication.config.t2dRestServer.base+grailsApplication.config.t2dRestServer.mysql+grailsApplication.config.t2dRestServer.path
        BIGQUERY_REST_SERVER = grailsApplication.config.server.URL
        TEST_REST_SERVER = grailsApplication.config.t2dTestRestServer.base+grailsApplication.config.t2dTestRestServer.name+grailsApplication.config.t2dTestRestServer.path
        DEV_REST_SERVER = grailsApplication.config.t2dDevRestServer.base+grailsApplication.config.t2dDevRestServer.name+grailsApplication.config.t2dDevRestServer.path
        QA_REST_SERVER = grailsApplication.config.t2dQaRestServer.base+grailsApplication.config.t2dQaRestServer.name+grailsApplication.config.t2dQaRestServer.path
        PROD_REST_SERVER = grailsApplication.config.t2dProdRestServer.base+grailsApplication.config.t2dProdRestServer.name+grailsApplication.config.t2dProdRestServer.path
        BASE_URL =  grailsApplication.config.server.URL;

    }

    private List <String> getGeneColumns (Boolean sigma) {
        List <String> returnValue
        if (sigma) {
            returnValue = (GENE_COLUMNS + SIGMA_GENE_COLUMNS + GWAS_GENE_COLUMNS)
        } else { // must be t2dGenes
            returnValue = (GENE_COLUMNS + EXSEQ_GENE_COLUMNS + EXCHP_GENE_COLUMNS + GWAS_GENE_COLUMNS)
        }
        return  returnValue
    }


    private deriveServerUrl (Server server)  {
        String url = ""
        switch (server) {
            case  Server.test:
                url =  grailsApplication.config.t2dTestRestServer.base+grailsApplication.config.t2dTestRestServer.name+grailsApplication.config.t2dTestRestServer.path
                break;
            case  Server.dev:
                url =  grailsApplication.config.t2dDevRestServer.base+grailsApplication.config.t2dDevRestServer.name+grailsApplication.config.t2dDevRestServer.path
                break;
            case  Server.qa:
                url =  grailsApplication.config.t2dQaRestServer.base+grailsApplication.config.t2dQaRestServer.name+grailsApplication.config.t2dQaRestServer.path
                break;
            case  Server.prod:
                url =  grailsApplication.config.t2dProdRestServer.base+grailsApplication.config.t2dProdRestServer.name+grailsApplication.config.t2dProdRestServer.path
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
            exception.printStackTrace()
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
        String drivingJson = """{
"gene_symbol": "${geneName}",
"user_group": "ui",
"columns": [${"\""+getGeneColumns (sigma).join("\",\"")+"\""}]
}
""".toString()
        returnValue = postRestCall( drivingJson, GENE_INFO_URL,server)
        return returnValue
    }



    public  Boolean testRestServer(Server server, Boolean sigma) {
        Boolean returnValue = false
        JSONObject jsonObject = retrieveGeneInfoByName("EGFR",server,sigma )
        if (jsonObject != null) {
            returnValue = ((jsonObject["is_error"] == false)  &&
                    (jsonObject["gene-info"].size() > 0))
        }
        return returnValue
    }





}
