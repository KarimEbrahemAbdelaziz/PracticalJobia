//
//  Login+Injection.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 12/11/2021.
//

import Foundation
import Resolver

extension Resolver {
    public static func registerLoginModule() {
        register { LoginViewController() }
        .resolveProperties({ resolver, viewController in
            resolver.resolve(LoginPresenterImplementation.self).loginView = viewController
        })
        .implements(LoginView.self)

        register { LoginPresenterImplementation() }
        .implements(LoginPresenter.self)
    }
}
