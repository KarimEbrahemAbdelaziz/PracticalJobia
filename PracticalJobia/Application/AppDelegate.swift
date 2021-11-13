//
//  AppDelegate.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 05/11/2021.
//

import UIKit
import Firebase
import Resolver

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {

        FirebaseApp.configure()

        window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC: OnboardingViewController = Resolver.resolve()
        let rootNC = UINavigationController(rootViewController: rootVC)
        rootNC.navigationBar.isHidden = true
//        rootNC.interactivePopGestureRecognizer?.isEnabled = false
        window?.rootViewController = rootNC
        window?.makeKeyAndVisible()

        return true
    }

}
