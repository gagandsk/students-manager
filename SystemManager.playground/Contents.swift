let math = Subject(name: "Math", teacherName: "Mr. Smith", level: SubjectLevel.intermediate)
let spanish = Subject(name: "Spanish", teacherName: "Elena Montiel", level: .basic)

let s1 = Student(name: "Vegeta", age: 29, email: "vegetassj1@gmail.com", subjects: [math, spanish], scores: [70, 80]);
let s2 = AdvancedStudent(name: "Goku", age: 29, email: "gokussj2@gmail.com", subjects: [math, spanish], scores: [90, 75], extraPoints: 10)

let desS1 = s1.describe()
let descS2 = s2.describe()

print(desS1)
print(descS2)
