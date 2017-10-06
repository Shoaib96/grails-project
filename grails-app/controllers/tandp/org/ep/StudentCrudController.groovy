package tandp.org.ep

class StudentCrudController {

    def index() {
        if(session.loginuser) {
            Login loginUser = Login.findById(session.loginuser)
            List studList = Student.findAllByLoginref(loginUser)
            if(studList) {
             def message = "You are already registered"
                [message: message]
            }
            else {
                List companyList = Company.findAll()
                [companyList: companyList]
            }
        }
        else {
            redirect controller:"login", action: "index"
        }
    }

    def list() {
        if(session.loginuser) {
            Login loginUser = Login.findById(session.loginuser)
            List studList = Student.findAllByLoginref(loginUser)
            [stud: studList]

        }
        else
            redirect controller:"login", action: "index"
    }

    def dataSave() {
        Map studentDetails = [:]
        studentDetails.universityRoll = params.universityRoll
        studentDetails.clgId = params.clgId
        studentDetails.branch = params.branch
        studentDetails.nameOfStud = params.nameOfStud
        studentDetails.mobno = params.mobno
        studentDetails.email = params.email
        studentDetails.gender = params.gender
        studentDetails.date = params.date
        studentDetails.tenth = params.tenth
        studentDetails.tenbrd = params.tenbrd
        studentDetails.tenpyr = params.tenpyr
        studentDetails.twelveth = params.twelveth
        studentDetails.twlbrd = params.twlbrd
        studentDetails.twlpyr = params.twlpyr
        studentDetails.firsem = params.firsem
        studentDetails.secsem = params.secsem
        studentDetails.thisem = params.thisem
        studentDetails.fousem = params.fousem
        studentDetails.fivsem = params.fivsem
        studentDetails.sixsem = params.sixsem
        studentDetails.avg = params.avg
        studentDetails.curback = params.curback
        studentDetails.poy = params.poy
        studentDetails.hmtown = params.hmtown
        studentDetails.fname = params.fname
        studentDetails.ocup = params.ocup
        studentDetails.add = params.add
//        studentDetails.companyName = params.cmp
        studentDetails.loginref = session.loginuser
//        studentDetails.companyref = cmp
        Student studentInstance = new Student(studentDetails)
        studentInstance.save(flush: true)
        flash.foo = "Register Successfully."
        redirect(action: "navbar")
    }

    def navbar(long id) {
        if(session.loginuser) {}
        else
            redirect controller:"login", action: "index"

    }
    def view(long id) {
        if(session.loginuser) {

            Student studentInstance = Student.get(id)
            if (studentInstance) {
                [studentInstance: studentInstance]
            } else {
                flash.message = "Update Successfully"
                redirect(action: "list")
            }
        }
        else
            redirect controller:"login", action: "index"
    }
    def update(long id) {
        Student studentInstance = Student.get(id)
        if(studentInstance) {
            studentInstance.universityRoll = Long.parseLong(params.universityRoll)
            studentInstance.clgId = params.clgId
            studentInstance.branch = params.branch
            studentInstance.nameOfStud = params.nameOfStud
            studentInstance.mobno = Long.parseLong(params.mobno)
            studentInstance.email = params.email
            studentInstance.gender = params.gender
            studentInstance.date = params.date
            studentInstance.tenth = Double.parseDouble(params.tenth)
            studentInstance.tenbrd = params.tenbrd
            studentInstance.tenpyr = Long.parseLong(params.tenpyr)
            studentInstance.twelveth = Double.parseDouble(params.twelveth)
            studentInstance.twlbrd = params.twlbrd
            studentInstance.twlpyr = Long.parseLong(params.twlpyr)
            studentInstance.firsem = Double.parseDouble(params.firsem)
            studentInstance.secsem = Double.parseDouble(params.secsem)
            studentInstance.thisem = Double.parseDouble(params.thisem)
            studentInstance.fousem = Double.parseDouble(params.fousem)
            studentInstance.fivsem = Double.parseDouble(params.fivsem)
            studentInstance.sixsem = Double.parseDouble(params.sixsem)
            studentInstance.avg = Double.parseDouble(params.avg)
            studentInstance.curback = params.curback
            studentInstance.poy = Long.parseLong(params.poy)
            studentInstance.hmtown = params.hmtown
            studentInstance.fname = params.fname
            studentInstance.ocup = params.ocup
            studentInstance.add = params.add
            studentInstance.save(flush: true)
        }

        redirect(action: "view")
    }

    def companyView() {
        if(session.loginuser) {
            /* Login loginUser = Login.findById(session.loginuser)
        List companyList = Company.findAllByLoginref(loginUser)
        [companyList: companyList]
*/
            List companyList = Company.findAll()
            [companyList: companyList]

        }
        else
            redirect controller:"login", action: "index"
    }

    def companyInfo() {
        if(session.loginuser) {
            /*Login loginUser = Login.findById(session.loginuser)
        List companyList = Company.findAllByLoginref(loginUser)
        [companyList: companyList]*/
            List companyList = Company.findAll()
            [companyList: companyList]
        }
        else
            redirect controller:"login", action: "index"
    }

    def completeList(long id) {
        Login loginUser = Login.findById(session.loginuser)
        Student studList = Student.findByLoginref(loginUser)

        Company companyList = Company.findById(id)

        CompleteList completeListInstance = CompleteList.findByCompanyrefAndStudentref(Company.get(id), Student.get(session.loginuser))

        if(completeListInstance) {
            flash.message = "You are already registered"
            redirect action: "companyView"
        }

        else if(studList.avg < companyList.percentCriteria || studList.tenth < companyList.tenthCriteria || studList.twelveth < companyList.twelfthCriteria) {
            flash.foo = "Sorry!!! You are not eligible. Please check the criteria."
            redirect action: "companyView"
        }
        else {
            Map completeList = [:]
            completeList.companyref = id
            completeList.studentref = session.loginuser
            CompleteList completeListInstance1 = new CompleteList(completeList)
            completeListInstance1.save(flush: true)
            flash.message = "Registered Successfully"
            redirect action: "companyView"
        }
    }
    def logout() {
        session.invalidate()
        redirect controller: "login", action: "index"
    }
}
