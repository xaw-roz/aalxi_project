package grailspractice

class StudentController {


    //static scaffold=Student
    def index() {
        def studentList=Student.findAll()
        [studentList:studentList]
    }
    def show(Long id)
        {
        Student student=Student.get(id);
        [student:student]
    }
    def create()
    {
        Student student=new Student(params)
        def subjects=Subject.findAll();
        [student:student,subjects:subjects]
    }

    def update()
    {
        params.subject=Subject.findByName(params.subject).id
        def student=Student.get(params.id)
        bindData(student,params)
        redirect action: "index"
    }

    def save()
    {
       // render Subject.findByName(params.subject).credit_hours
       params.subject=Subject.findByName(params.subject).id
            def student = new Student(params)
            //student.setSubject(Subject.findByName(params.subject));
            student.save(failOnError: true);
        flash.message="the student record was stored int he database"
        redirect action: "index"

    }
    def edit()
    {
        def student=Student.get(params.id)
        def subject=Subject.findAll()
        [student: student,subjects:subject ]
    }



}
