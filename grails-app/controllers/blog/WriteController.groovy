package blog

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.userdetails.GrailsUser


@Secured('isAuthenticated()')
class WriteController {
    SpringSecurityService springSecurityService

    def index() {

        render loggedUsername()
    }
    def logout() {
//        render flash.toString()+  ' SHIT '+loggedUsername()
        redirect uri: SpringSecurityUtils.securityConfig.logout.filterProcessesUrl
    }

}
