package;

using Lambda;

typedef Name    = String;
typedef Grade   = Int;
typedef Student = { name: Name, grade: Grade };

class GradeSchool {
    private final grades: Map<Grade, List<Name>> = [];

    public function new(students: Array<Student>) {
        for (student in students) {
            if (!grades.exists(student.grade))
                grades[student.grade] = new List();

            grades[student.grade].add(student.name);
        }
    }

    public function roster(): Array<Name> {
        var roster = [];
        var sortedKeys = [for (n in grades.keys()) n];
        sortedKeys.sort(compareInt);

        return [
            for (key in sortedKeys) 
            grade(key)
        ].flatten();
    }

    public function grade(desiredGrade: Grade): Array<String> {
        var grade = grades[desiredGrade].array();
        grade.sort(compareString);

        return grade;
    }

    private function compareInt(a: Int, b: Int): Int {
        return a < b ? -1 : 1;
    }

    private function compareString(a: String, b: String): Int {
        return a < b ? -1 : 1;
    }
}
