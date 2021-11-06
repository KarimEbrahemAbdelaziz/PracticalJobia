//
//  LoginConfigurator.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 06/11/2021.
//

import Foundation

// DI Layer
class LoginModuleConfigurator {
    static func configure() -> LoginViewController {
        let viewController = LoginViewController()

        let firebaseClient = FirebaseClientImplementation()
        let authenticationGateway = APIAuthenticationGatewayImplementation(firebaseClient: firebaseClient)
        let userLoginUseCase = UserLoginUseCaseImplementation(authenticationGateway: authenticationGateway)
        let presenter = LoginPresenterImplementation(loginView: viewController, loginUseCase: userLoginUseCase)

        viewController.presenter = presenter
        return viewController
    }
}
