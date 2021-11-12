//
//  NavigationRoute.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 12/11/2021.
//

import Foundation
import UIKit

enum PresentingStyle {
    case modal(modalPresentationStyle: UIModalPresentationStyle = .popover)
    case push
}

protocol Route {
    var destination: UIViewController { get }
    var defaultStyle: PresentingStyle { get }
}

protocol NavigationRoute: AnyObject {
    func navigate(_ route: Route)
}

extension NavigationRoute where Self: UIViewController {
    func navigate(_ route: Route) {
        let viewController = route.destination

        switch route.defaultStyle {
        case let .modal(modalPresentationStyle):
            viewController.modalPresentationStyle = modalPresentationStyle
            present(viewController, animated: true, completion: nil)
        case .push:
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
