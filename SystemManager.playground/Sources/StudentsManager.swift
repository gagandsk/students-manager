//
//  StudentsManager.swift
//  
//
//  Created by Gagandeep Dass Kaur on 20/2/25.
//

import Foundation

public protocol Manageable {
    func insertStudent(_ student: Student?)
    func asignSubjectToStudent(subject: Subject, score: Double, student: Student?)
    func generateStudentsReport()
    func getApprovedStudents() ->[Student]
    func getReprobedStudents() ->[Student]
    func getAverages() -> [Double]
    func getTotalAverage() -> Double
    func getCoursedSubjects() -> Set<Subject>
}

public class StudentsManager: Manageable {
    var students: [Student]
    
    public init(students: [Student]) {
        self.students = students
    }
    
    public func insertStudent(_ student: Student?) {
        guard let student else {
            return
        }
        students.append(student)
    }
    
    public func asignSubjectToStudent(subject: Subject, score: Double, student: Student?) {
        if let student {
            for s in students {
                if student.email.elementsEqual(s.email) {
                    s.assignSubject(subject: subject, score:score)
                }
            }
        } else {
            //TODO: throw error
        }
    }
    
    public func generateStudentsReport() {
        for student in students {
            print(student.describe())
        }
    }
    
    // filter
    public func getApprovedStudents() -> [Student] {
        return students.filter { student in
            return student.isApproved()
        }
    }
    
    public func getReprobedStudents() -> [Student] {
        return students.filter { student in
            return !student.isApproved()
        }
    }
    
    // map
    public func getAverages() -> [Double] {
        return students.map { student in
            return student.getAverageScore()
        }
    }
    
    public func getTotalAverage() -> Double {
        let avr = getAverages()
        let sum = avr.reduce(0.0, +)
        return sum / Double(avr.count)
    }
    
    // reduce
    public func getCoursedSubjects() -> Set<Subject> {
        return students.reduce(into: Set<Subject>()) { result, student in
            for subject in student.subjects {
                result.insert(subject)
            }
        }
    }
}
