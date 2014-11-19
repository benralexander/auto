package parts

import auto.RestServerService
import org.codehaus.groovy.grails.web.json.JSONObject

class MpgController {
    RestServerService restServerService

    def index() {render (view: "mpgLinks")}

    def mpgLinks() {
        render (view: "mpgLinks")
    }


    def checkServerAjax() {
        String serverNumberAsString = params['serverNumber']
        int serverNumber  = 0
        try {
            serverNumber = Integer.parseInt(serverNumberAsString)
        }  catch (Exception exception) {
            exception.printStackTrace()
            log.error "Unexpected server number returned from client = ${serverNumberAsString}"
        }
        Boolean success = restServerService.testRestServer(RestServerService.Server.getServerById(serverNumber),false)
        //              status: (success?1:0) }
        response.setContentType("application/json")

        render """{"server":${serverNumber},"status":${(success?1:0)}}""".toString()
    }

}
