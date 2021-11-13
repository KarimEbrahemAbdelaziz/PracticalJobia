//
//  OnboardingPresenter.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 12/11/2021.
//

import Foundation
import Resolver

protocol OnboardingPresenter {
    func login()
}

class OnboardingPresenterImplementation: OnboardingPresenter {
    @WeakLazyInjected var onboardingView: OnboardingView?
    @Injected private var loginUseCase: UserLoginUseCase

    func login() {
        onboardingView?.navigate(OnboardingRoutes.login)
    }
}
