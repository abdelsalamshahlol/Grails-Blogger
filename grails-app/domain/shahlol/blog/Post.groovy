package shahlol.blog

class Post {
  String content
  String title
  Date publishdate
  User user

    static constraints = {
      content blank:false
      title blank:false
      publishdate blank:false
    }
  static  mapping={
      content type: 'text'
  }
}
