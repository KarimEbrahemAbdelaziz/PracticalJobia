//
//  FirebaseClientError.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 06/11/2021.
//

import Foundation

enum FirebaseClientError: Error {
    case loginFailed
}

extension FirebaseClientError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .loginFailed:
            return "Please try again later."
        }
    }
}
