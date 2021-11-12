//
//  OnboardingConfigurator.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 12/11/2021.
//

import Foundation

// DI Layer
class OnboardingConfigurator {
    static func configure() -> OnboardingViewController {
        let viewController = OnboardingViewController()
        let presenter = OnboardingPresenterImplementation(onboardingView: viewController)

        viewController.presenter = presenter
        return viewController
    }
}
