//
//  AuthenticationGateway.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 06/11/2021.
//

import Foundation

protocol AuthenticationGateway {
    func login(
        parameters: LoginParameters,
        completionHandler: @escaping (_ user: Result<User, Error>) -> Void
    )
}
