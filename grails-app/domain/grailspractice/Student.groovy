package grailspractice

class Student {
    String name
    String roll
    String section
    Float percentage
    String phone_number
    static hasOne = [Subject:Subject]

    static constraints = {
        name blank: false
        roll blank: false, unique: true
        section inList: ['A','B','C']
        percentage nullable: false
        phone_number nullable: true
        //subject inList: [Subject.findAll(name).toList()]

    }
}


