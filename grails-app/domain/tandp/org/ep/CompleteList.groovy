package tandp.org.ep

class CompleteList {

    Company companyref
    Student studentref

    static constraints = {
        companyref unique: "studentref"
    }
}
