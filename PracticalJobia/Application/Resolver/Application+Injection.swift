//
//  Application+Injection.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 12/11/2021.
//

import Foundation
import Resolver

// Scope
// 1. Graph (default) ... ARC ✅
// 2. Unique
// 3. Application (Singleton) ... ✅
// 4. Shared (Classes)
// 5. Cached (Reset Objects)
// 6. Container

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        // Register Gateways
        registerEntityGateways()

        // Register UseCases
        registerUseCases()

        // Register Modules
        registerOnboardingModule()
        registerLoginModule()
    }
}
