package tandp.org.ep

class BootStrap {

    def init = { servletContext ->
        Login loginInstance = new Login(firstName: "shoaib", lastName: "ahmed", email: "shoaibahmed4596@gmail.com", password: "123", clgname: "SSTC")
        loginInstance.save()
        Login loginInstance1 = new Login(firstName: "arpit", lastName: "jain", email: "arpit@gmail.com", password: "123", clgname: "SSTC")
        loginInstance1.save()
        Login loginInstance2 = new Login(firstName: "admin", lastName: "admin", email: "admin@gmail.com", password: "admin", clgname: "SSTC")
        loginInstance2.save()
    }
    def destroy = {
    }
}
