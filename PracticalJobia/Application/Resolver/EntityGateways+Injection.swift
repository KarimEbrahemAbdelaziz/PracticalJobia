//
//  EntityGateways+Injection.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 12/11/2021.
//

import Foundation
import Resolver

extension Resolver {
    public static func registerEntityGateways() {
        register { FirebaseClientImplementation() } .implements(FirebaseClient.self)
            .scope(.application)

        register {
            APIAuthenticationGatewayImplementation(
                firebaseClient: Resolver.resolve()
            )
        }
        .implements(AuthenticationGateway.self)
    }
}
