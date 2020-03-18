package shahlol.blog

import blog.PostsService
import grails.testing.services.ServiceUnitTest
import spock.lang.Specification

class UsernameServiceSpec extends Specification implements ServiceUnitTest<PostsService.UsernameService>{

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
