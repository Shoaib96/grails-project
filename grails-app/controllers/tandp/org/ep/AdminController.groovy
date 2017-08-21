package tandp.org.ep

class AdminController {

    def index() {
        if(session.loginuser){}
        else
            redirect controller:"login", action:"index"
    }

    def viewList() {
       if(session.loginuser) {
               List<CompleteList> completeInstance = CompleteList.findAll()
               [completeInstance: completeInstance]
       }
        else
           redirect controller:"login", action: "index"
    }

    def viewCompleteList(long id) {
        if(session.loginuser) {
            CompleteList completeInstance = CompleteList.get(id)
            if (completeInstance) {
                [studentInstance: completeInstance]
            } else {
                redirect(action: "viewList")
            }
        }
        else
            redirect controller:"login", action: "index"

    }

    def delete(long id) {
        CompleteList completeListInstance = CompleteList.findById(id)
        if(completeListInstance) {
            completeListInstance.delete(flush: true)
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
        Company companyInstance = Company.findByCompanyName(params.companyName)
        if(companyInstance) {
            flash.message = "Company already registered"
            redirect action: "companyRegister"
        }
        else {
            Map company = [:]
            company.companyId = params.companyId
            company.companyName = params.companyName
            company.percentCriteria = params.percentCriteria
            company.dateOfRecruitment = params.dateOfRecruitment
            company.numOfRecruitment = params.numOfRecruitment
            company.branch = params.branch
            company.about = params.about
            company.loginref = session.loginuser
            Company companyInstance1 = new Company(company)
            companyInstance1.save(flush: true)
            redirect(action: "companyRegister")
        }
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
        List CompleteList = CompleteList.findAll()
        Map download = [:]
        download.filename =params.filename
        Admin adminInstance = new Admin(download)
        adminInstance.save(flush: true)
        File file = new File("/home/shoaib/${adminInstance.filename}")
        if (file.exists()) {
            redirect(action: "download")
        } else {
            file.write "University Roll, College Id, Branch, Name Of Student, Mob, Email, Gender, D.O.B., 10th %, 10th Board, 10th Passing Year, 12th %, 12th board, 12th Passing Year, 1st Sem, 2nd Sem,3rd Sem, 4th Sem, 5th Sem,6th Sem, Average, Current Backlog, B.E. Passing Year, Home Town, Father's Name, Occupation, Address, Company Name\n"

            CompleteList.each {
                file << "${it.studentref.universityRoll},${it.studentref.clgId},${it.studentref.branch},${it.studentref.nameOfStud},${it.studentref.mobno},${it.studentref.email},${it.studentref.gender},${it.studentref.date},${it.studentref.tenth},${it.studentref.tenbrd},${it.studentref.tenpyr},${it.studentref.twelveth},${it.studentref.twlbrd},${it.studentref.twlpyr},${it.studentref.firsem},${it.studentref.secsem},${it.studentref.thisem},${it.studentref.fousem},${it.studentref.fivsem},${it.studentref.sixsem},${it.studentref.avg},${it.studentref.curback},${it.studentref.poy},${it.studentref.hmtown},${it.studentref.fname},${it.studentref.ocup},${it.studentref.add},${it.companyref.companyName}\n"
            }
            redirect(action: "download")
        }
    }
}

