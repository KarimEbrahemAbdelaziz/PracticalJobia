//
//  OnboardingPresenter.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 12/11/2021.
//

import Foundation

protocol OnboardingPresenter {
    func login()
}

class OnboardingPresenterImplementation: OnboardingPresenter {
    private weak var onboardingView: OnboardingView?

    init(onboardingView: OnboardingView) {
        self.onboardingView = onboardingView
    }

    func login() {
        onboardingView?.navigate(OnboardingRoutes.login)
    }
}
