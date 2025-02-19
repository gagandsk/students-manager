//
//  Subject.swift
//  
//
//  Created by Gagandeep Dass Kaur on 19/2/25.
//

import Foundation

public struct Subject {
    let name: String
    let teacherName: String
    let minimumScore: Double
    
    public init(name: String, teacherName: String, minimumScore: Double) {
        self.name = name
        self.teacherName = teacherName
        self.minimumScore = minimumScore
    }
    
    public func isPassed(score: Double) -> Bool {
        return score >= minimumScore
    }
    
    public func subjectDescription() -> String{
        return """
        --------------------------------
        Subject: \(name)
        Teacher: \(teacherName)
        Minimum Score: \(minimumScore)
        """
    }
}
