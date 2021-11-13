//
//  OnboardingRoutes.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 12/11/2021.
//

import Foundation
import UIKit
import Resolver

enum OnboardingRoutes: Route {
    case login
//    case signup

    var destination: UIViewController {
        switch self {
        case .login:
            let viewController: LoginViewController = Resolver.resolve()
            return viewController
//        case .signup:
//            break
        }
    }

    var defaultStyle: PresentingStyle {
        switch self {
        case .login:
            return .modal(modalPresentationStyle: .popover)
        }
    }
}
