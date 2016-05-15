package grailspractice

class Teacher {
    String name
    String shift
    String location
    Double salary
    String phone_number
    String subavailable
    String toString(){
        "${name}"
    }
    static belongsTo = [subjects:Subject]

    static constraints = {
        name blank: false
        shift inList: ['morning','day','evening','night']
        location blank: false,size: 3..20
        salary nullable: false
        phone_number blank: false


    }
}
