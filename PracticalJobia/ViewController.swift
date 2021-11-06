//
//  ViewController.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 05/11/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        testFirebaseLogin()
    }

    private func testFirebaseLogin() {
        let firebaseClient = FirebaseClientImplementation()
        let authGateway = APIAuthenticationGatewayImplementation(firebaseClient: firebaseClient)
        let loginUseCase = UserLoginUseCaseImplementation(authenticationGateway: authGateway)

        let parameters = LoginParameters(email: "karimebrahemabdelaziz@gmail.com", password: "1234567890")
        loginUseCase.login(parameters: parameters) { _ in
        }
    }

}
