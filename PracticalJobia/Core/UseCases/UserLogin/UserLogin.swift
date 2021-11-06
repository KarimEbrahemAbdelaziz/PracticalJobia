//
//  UserLogin.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 06/11/2021.
//

import Foundation

protocol UserLoginUseCase {
    func login(
        parameters: LoginParameters,
        completionHandler: @escaping (_ user: Result<User, Error>) -> Void
    )
}

class UserLoginUseCaseImplementation: UserLoginUseCase {
    private let authenticationGateway: AuthenticationGateway

    init(authenticationGateway: AuthenticationGateway) {
        self.authenticationGateway = authenticationGateway
    }

    func login(parameters: LoginParameters, completionHandler: @escaping (Result<User, Error>) -> Void) {

        guard parameters.email.isValidEmail() else {
            completionHandler(.failure(UserLoginError.notValidEmail))
            return
        }

        guard parameters.password.count >= 8 else {
            completionHandler(.failure(UserLoginError.passwordNotLongEnough))
            return
        }

        authenticationGateway.login(parameters: parameters, completionHandler: completionHandler)
    }
}
