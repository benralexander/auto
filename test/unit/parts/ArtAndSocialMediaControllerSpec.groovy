package parts

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(ArtAndSocialMediaController)
class ArtAndSocialMediaControllerSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test index"() {
        when:
        int i = 1
        controller.index()

        then:
        i == 1
        response.status == 200
    }

    void "test method missing"() {
        when:
        int i = 1
        String ret = controller.unreal('hello')

        then:
        ret == 'called unreal with [hello]'
    }

}