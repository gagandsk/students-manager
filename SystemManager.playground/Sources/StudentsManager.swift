//
//  StudentsManager.swift
//  
//
//  Created by Gagandeep Dass Kaur on 20/2/25.
//

import Foundation

public protocol Manageable {
    //con 'throws' estamos indicando que vamos a lanzar un error
    func insertStudent(_ student: Student?) throws
    func asignSubjectToStudent(subject: Subject, score: Double, student: Student?) throws
    func generateStudentsReport() throws
    func getApprovedStudents() ->[Student]
    func getReprobedStudents() ->[Student]
    func getAverages() -> [Double]
    func getTotalAverage() -> Double
    func getCoursedSubjects() -> Set<Subject>
}

public class StudentsManager: Manageable {
    var students: [Student]
    let maxStudents: Int
    
    public init(students: [Student], maxStudents: Int) {
        self.students = students
        self.maxStudents = maxStudents
    }
    
    public func insertStudent(_ student: Student?) throws {
        guard let student else {
            throw ManagerError.studentNotAddedError
        }
        if(students.count < maxStudents) {
            students.append(student)
        } else {
            throw ManagerError.maxStudentReachedError(max: maxStudents)
        }
        
    }
    
    public func asignSubjectToStudent(subject: Subject, score: Double, student: Student?) throws {
        if let student {
            for s in students {
                if student.email.elementsEqual(s.email) {
                    s.assignSubject(subject: subject, score:score)
                }
            }
        } else {
            throw ManagerError.subjectNotAssignedError
        }
    }
    
    public func generateStudentsReport() throws {
        if(students.isEmpty) {
            throw ManagerError.reportNotFoundError
        } else {
            for student in students {
                print(student.describe())
            }
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
