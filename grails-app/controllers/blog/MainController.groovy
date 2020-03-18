package blog

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.userdetails.GrailsUser
import groovy.transform.CompileStatic


//@Secured('isAuthenticated()')
class MainController {
    def PostsService
    def UsernameService

//    SpringSecurityService springSecurityService

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def index() {
        def name = UsernameService.loggedUsername()
        def posts = PostsService.getAllPost.call()
        [title: "Home Page", header: "MTV Teach Blog", 'posts': posts, 'name': name]
    }

//    @Secured('ROLE_ADMIN') This one is good for ADMIN methods and controllers only
    @Secured('isAuthenticated()')
    // this will work for logged in users including admin
    def read() {
        def _post = PostsService.getPost(params.id)
        if (_post != null) {
            def blogTitle = "MTV Tech Blog | ${_post.title}"
            [data: _post, title: blogTitle]
        } else {
            return redirect([home: "/"])
//            render "Nothing"
        }
    }

}
