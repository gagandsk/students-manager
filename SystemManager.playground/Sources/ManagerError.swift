//
//  ManagerError.swift
//  
//
//  Created by Gagandeep Dass Kaur on 20/2/25.
//

import Foundation

public enum ManagerError: Error, LocalizedError {
    case studentNotAddedError
    case subjectNotAssignedError
    case reportNotFoundError
    case maxStudentReachedError(max: Int)
    
    public var errorDescription: String ? {
        switch self {
        case .studentNotAddedError:
            return "Student not added"
        case .subjectNotAssignedError:
            return "Subject not assigned"
        case .reportNotFoundError:
            return "Report not found"
        case .maxStudentReachedError(max: let max):
            return "Maximum student limit reached (\(max))"
        }
    }
}
