//
//  LoginPresenter.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 06/11/2021.
//

import Foundation
import Resolver

protocol LoginPresenter {
    func login(with email: String, and password: String)
}

class LoginPresenterImplementation: LoginPresenter {
    @WeakLazyInjected var loginView: LoginView?
    @Injected private var loginUseCase: UserLoginUseCase

    func login(with email: String, and password: String) {
        let parameters = LoginParameters(email: email, password: password)

        loginUseCase.login(parameters: parameters) { result in
            switch result {
            case let .success(user):
                print(user.name)
                print(user.email)
            case .failure:
                break
            }
        }
    }
}
