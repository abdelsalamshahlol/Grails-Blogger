package blog

import grails.gorm.transactions.Transactional
import shahlol.blog.Post

@Transactional
class PostsService {

    def getPost(id) {
        def _post = Post.get(id)
        if (_post != null) {
            def name_input_f = _post.user.first_n
            def name_input_l = _post.user.last_n
            def cap_f = name_input_f.substring(0, 1).toUpperCase() + name_input_f.substring(1)
            def cap_l = name_input_l.substring(0, 1).toUpperCase() + name_input_l.substring(1)
            _post.user.first_n = cap_f
            _post.user.last_n = cap_l
            _post
        }
//        else{
//            null
//        }
    }

    def getAllPost = {
        def posts = Post.listOrderByPublishdate(order: 'desc')
        posts = posts.each { i ->
            def name_input_f = i.user.first_n
            def name_input_l = i.user.last_n
            def cap_f = name_input_f.substring(0, 1).toUpperCase() + name_input_f.substring(1)
            def cap_l = name_input_l.substring(0, 1).toUpperCase() + name_input_l.substring(1)
            i.user.first_n = cap_f
            i.user.last_n = cap_l
        }
        posts
    }
    @Transactional
    static class UsernameService {

        def serviceMethod() {

        }
    }
}
