package blog

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.userdetails.GrailsUser

class UsernameService {
    SpringSecurityService springSecurityService

    String loggedUsername() {
        if (springSecurityService.principal == null) {
            return null
        }
        if (springSecurityService.principal instanceof String) {
            return springSecurityService.principal
        }
        if (springSecurityService.principal instanceof GrailsUser) {
            return ((GrailsUser) springSecurityService.principal).username
        }
        null
    }
}
