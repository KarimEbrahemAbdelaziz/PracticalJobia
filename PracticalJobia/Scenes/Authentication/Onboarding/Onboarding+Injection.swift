//
//  Onboarding+Injection.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 13/11/2021.
//

import Foundation
import Resolver

extension Resolver {
    public static func registerOnboardingModule() {
        register { OnboardingViewController() }
        .resolveProperties({ resolver, viewController in
            resolver.resolve(OnboardingPresenterImplementation.self).onboardingView = viewController
        })
        .implements(OnboardingView.self)

        register { OnboardingPresenterImplementation() }
        .implements(OnboardingPresenter.self)
    }
}
