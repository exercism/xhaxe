package;

typedef Name    = String;
typedef Grade   = Int;
typedef Student = { name: Name, grade: Grade };

class GradeSchool {
    public function new(students: Array<Student>) {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

    public function roster(): Array<Name> {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

    public function grade(desiredGrade: Grade): Array<String> {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }
}