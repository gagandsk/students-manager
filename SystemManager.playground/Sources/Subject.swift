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
    let level: SubjectLevel
    
    public init(name: String, teacherName: String, level: SubjectLevel) {
        self.name = name
        self.teacherName = teacherName
        self.level = level
    }
    
    public func isPassed(score: Double) -> Bool {
        return score >= minimumScore()
    }
    
    public func subjectDescription() -> String{
        return """
        --------------------------------
        Subject: \(name)
        Teacher: \(teacherName)
        Minimum Score: \(minimumScore())
        """
    }
    
    private func minimumScore() -> Double {
        switch level {
            case .basic:
                return 50.0
            case .intermediate:
                return 70.0
            case .advanced:
                return 80.0
        }
    }
}
