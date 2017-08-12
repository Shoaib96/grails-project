package tandp.org.ep

class AdminController {

    def index() {}

    def viewList() {
       if(session.loginuser) {
           List studList = Student.findAll()
           [stud: studList]
       }
        else
           redirect controller:"login", action: "index"

    }

    def viewCompleteList(long id) {
        if(session.loginuser) {
            Student studentInstance = Student.get(id)
            if (studentInstance) {
                [studentInstance: studentInstance]
            } else {
                redirect(action: "viewList")
            }
        }
        else
            redirect controller:"login", action: "index"

    }

    def delete(long id) {
        println params.id
        Student studentInstance = Student.findById(id)
        if(studentInstance) {
            studentInstance.delete(flush: true)
            flash.message = "Delete Successfully"
        }
        else {
            println "wrong deleted user id ${id}"
        }
        redirect(action: "viewList")
    }


    def companyRegister() {
        if (session.loginuser){}
        else
            redirect controller:"login", action: "index"
    }

    def companySave() {
        Map company = [:]
        company.companyId = params.companyId
        company.companyName = params.companyName
        company.percentCriteria = params.percentCriteria
        company.dateOfRecruitment = params.dateOfRecruitment
        company.numOfRecruitment = params.numOfRecruitment
        company.branch = params.branch
        company.about = params.about
        company.loginref = session.loginuser
        Company companyInstance = new Company(company)
        companyInstance.save(flush: true)
        redirect(action: "companyRegister")
    }

    def deleteCompany(long id) {
        Company companyInstance = Company.findById(id)
        if(companyInstance) {
            companyInstance.delete(flush: true)
            flash.foo = "Delete Successfully"
        }
        else {
            println "wrong deleted user id ${id}"
        }
        redirect(action: "companyView")
    }

    def companyView() {
        if(session.loginuser) {
            Login loginUser = Login.findById(session.loginuser)
            List companyList = Company.findAllByLoginref(loginUser)
            [companyList: companyList]
        }
        else
            redirect controller:"login", action: "index"

    }


    def view(long id) {

        Company companyInstance = Company.get(id)
        if(companyInstance) {
            [companyInstance: companyInstance]
        }
        else {
            flash.message = "Update Successfully"
            redirect(action: "companyView")
        }
    }
    def update(long id) {
        Company companyInstance = Company.get(id)
        if(companyInstance) {
            companyInstance.companyId = params.companyId
            companyInstance.companyName = params.companyName
            companyInstance.percentCriteria = Double.parseDouble(params.percentCriteria)
            companyInstance.dateOfRecruitment = params.dateOfRecruitment
            companyInstance.numOfRecruitment = Integer.parseInt(params.numOfRecruitment)
            companyInstance.branch = params.branch
            companyInstance.save(flush: true)
        }

        redirect(action: "view")
    }

    def download() {
        if (session.loginuser){}
        else
            redirect controller:"login", action: "index"

    }

    def downloadList() {
        List studList = Student.findAll()
        Map download = [:]
        download.filename =params.filename
        Admin adminInstance = new Admin(download)
        adminInstance.save(flush: true)
        File file = new File("/home/shoaib/${adminInstance.filename}")
        if (file.exists()) {
            redirect(action: "download")
        } else {
            file.write "universityRoll, collegeId, branch, nameOfStud, mob, email, gender, date, tenth, tenthbrd, tenthyr, twelfth, twelfthbrd, twelfthpyr, 1sem, 2sem,3sem, 4sem, 5sem,6sem, avg, curback, poy, hmtown, fname, occup, add, comp\n"

            studList.each {
                file << "${it.universityRoll},${it.clgId},${it.branch},${it.nameOfStud},${it.mobno},${it.email},${it.gender},${it.date},${it.tenth},${it.tenbrd},${it.tenpyr},${it.twelveth},${it.twlbrd},${it.twlpyr},${it.firsem},${it.secsem},${it.thisem},${it.fousem},${it.fivsem},${it.sixsem},${it.avg},${it.curback},${it.poy},${it.hmtown},${it.fname},${it.ocup},${it.add},${it.companyName}\n"
            }
            redirect(action: "download")
        }
    }
}

