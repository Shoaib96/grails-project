package tandp.org.ep

class LoginController {
    def index() { }
    def register() {
        session.loginuser = Login.findByEmailAndPassword(params.email, params.password)
        Login currentUser = Login.findByEmailAndPassword(params.email, params.password)
        def admin = params.email
        def password = params.password
        if(admin == "admin@gmail.com" && password == "admin")
        {
            session.loginuser = currentUser.id
            flash.message = "Login Successfully. Welcome Admin"
            redirect controller: "admin", action: "index"
        }
        else if(currentUser) {
            session.loginuser = currentUser.id
            flash.message = "Login Successfully. Welcome ${currentUser.firstName}"
            redirect controller: "studentCrud", action: "navbar"
        }
        else {
            redirect action: "index"
        }
    }

    def signup() { }
    def newuser() {
        Map newUser = [:]
        newUser.firstName = params.firstName
        newUser.lastName = params.lastName
        newUser.email = params.email
        newUser.password = params.password
        newUser.clgname = params.clgname
        Login loginInstance = new Login(newUser)
        loginInstance.save(flush: true)
        redirect(action: "index")
    }
}
