//
//  Application+Injection.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 12/11/2021.
//

import Foundation
import Resolver

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        // Register Gateways
        registerEntityGateways()

        // Register UseCases
        registerUseCases()

        // Register Modules
        // Onboarding Module
        registerLoginModule()
    }
}
