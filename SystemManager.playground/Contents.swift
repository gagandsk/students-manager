let math = Subject(name: "Math", teacherName: "Mr. Smith", minimumScore: 70)
let s1 = Student(name: "Vegeta", age: 29, email: "vegetassj1@gmail.com", subjects: [math], scores: [70]);
let s2 = AdvancedStudent(name: "Goku", age: 29, email: "gokussj2@gmail.com", subjects: [math], scores: [90], extraPoints: 10)
let desS1 = s1.studentDescription()
let descS2 = s2.studentDescription()

print(desS1)
print(descS2)
