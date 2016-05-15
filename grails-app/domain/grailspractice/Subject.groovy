package grailspractice

class Subject {

    String name
    String sid

    Float credit_hours
    String toString(){
        "${name}"
    }
  //  static belongsTo = [teacher:Teacher]

    static constraints = {
        name blank: false
        sid blank: false, unique: true
        credit_hours nullable: false
    }
}
