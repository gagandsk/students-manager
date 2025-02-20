let math = Subject(name: "Math", teacherName: "Mr. Smith", level: SubjectLevel.intermediate)
let spanish = Subject(name: "Spanish", teacherName: "Elena Montiel", level: .basic)
let biology = Subject(name: "Biology", teacherName: "Mr. Parker", level: .intermediate)
let economy = Subject(name: "Economy", teacherName: "Mr. Morales", level: .intermediate)

let s1 = Student(name: "Vegeta", age: 29, email: "vegetassj1@gmail.com", subjects: [], scores: []);
let s2 = AdvancedStudent(name: "Goku", age: 29, email: "gokussj2@gmail.com", subjects: [], scores: [], extraPoints: 10)

let service = StudentsManager(students: [], maxStudents: 3)
service.insertStudent(nil)
service.insertStudent(s2)

service.asignSubjectToStudent(subject: math, score: 80, student: s1)
service.asignSubjectToStudent(subject: spanish, score: 70, student: s1)
service.asignSubjectToStudent(subject: biology, score: 90, student: s1)

/*
service.asignSubjectToStudent(subject: math, score: 80, student: s2)
service.asignSubjectToStudent(subject: spanish, score: 96, student: s2)
service.asignSubjectToStudent(subject: economy, score: 100, student: s2)
*/

service.generateStudentsReport()
