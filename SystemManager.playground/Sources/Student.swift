//
//  Student.swift
//  
//
//  Created by Gagandeep Dass Kaur on 20/2/25.
//

import Foundation

public class Student: Describable {
    let name: String
    let age: Int
    let email: String
    var subjects: [Subject]
    var scores: [Double]
    
    public init(name: String, age: Int, email: String, subjects: [Subject], scores: [Double]) {
        self.name = name
        self.age = age
        self.email = email
        self.subjects = subjects
        self.scores = scores
    }
    
    public func describe() -> String{
        var description = """
        -------------------
        STUDENT:
        -------------------
        # Name: \(name)
        # Age: \(age)
        # Email: \(email)
        # Actual Subjects:
        """
        
        for (subject,score) in zip(subjects,scores) {
            description += """
                \(subject.describe())
                Score: \(score)
                """
        }
        
        description += "\n-------------------"
        
        return description
    }
    
    public func assignSubject(subject: Subject, score: Double) {
        self.subjects.append(subject)
        self.scores.append(score)
    }
}
