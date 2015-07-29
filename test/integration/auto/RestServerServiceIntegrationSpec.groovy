package auto

import grails.test.spock.IntegrationSpec
import org.codehaus.groovy.grails.web.json.JSONObject
import org.junit.After
import org.junit.Before
import spock.lang.Unroll

/**
 * Created by ben on 11/10/2014.
 */
@Unroll
class RestServerServiceIntegrationSpec  extends IntegrationSpec {
    RestServerService restServerService


    @Before
    void setup() {

    }

    @After
    void tearDown() {

    }


    void "test  smoke"() {
        when:
        int i = 1
        then:
        assert i == 1
    }

//
//    void "test retrieveTraitAsSpecifiedByGenomicRegion"() {
//        when:
//        JSONObject jsonObject = restServerService.retrieveGeneInfoByName("EGFR",RestServerService.Server.bprod,false )
//        then:
//        jsonObject["is_error"] == false
//        jsonObject["gene-info"].size() > 0
//    }
//
//    void "test retrieveTraitAsSpecifiedByGenomicRegion sigma"() {
//        when:
//        JSONObject jsonObject = restServerService.retrieveGeneInfoByName("EGFR",RestServerService.Server.bprod,true )
//        then:
//        jsonObject["is_error"] == false
//        jsonObject["gene-info"].size() > 0
//    }

}
