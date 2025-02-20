//
//  AdvancedStudent.swift
//  
//
//  Created by Gagandeep Dass Kaur on 20/2/25.
//

import Foundation

// la classe 'AdvancedStudent' hereda de 'Student'
public class AdvancedStudent: Student {
    let extraPoints: Double
    
    public init(name: String, age: Int, email: String, subjects: [Subject], scores: [Double], extraPoints: Double) {
        self.extraPoints = extraPoints
        super.init(name: name, age:age, email: email, subjects: subjects, scores:scores)
    }
    
    public override func studentDescription() -> String{
            var description = """
            -------------------
            ADVANCED STUDENT:
            -------------------
            # Name: \(name)
            # Age: \(age)
            # Email: \(email)
            # Extra Points: \(extraPoints)
            # Actual Subjects:
            """
            
            for (subject,score) in zip(subjects,scores) {
                description += """
                    \(subject.subjectDescription())
                    Score: \(score)
                    """
            }
            
            description += "\n-------------------"
            
            return description
        }
}
