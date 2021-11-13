//
//  UseCases+Injection.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 12/11/2021.
//

import Foundation
import Resolver

extension Resolver {
    public static func registerUseCases() {
        register { UserLoginUseCaseImplementation(authenticationGateway: Resolver.resolve()) }
        .implements(UserLoginUseCase.self)
        .scope(.shared)
    }
}
