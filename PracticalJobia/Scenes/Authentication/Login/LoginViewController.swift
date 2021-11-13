//
//  LoginViewController.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 06/11/2021.
//

import UIKit
import Resolver

protocol LoginView: ViewProtocol {

}

class LoginViewController: UIViewController {

    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var loginButton: UIButton!

    @Injected private var presenter: LoginPresenter

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction private func login(_ sender: UIButton) {
        guard let email = emailTextField.text,
              let password = passwordTextField.text else { return }

        presenter.login(with: email, and: password)
    }

}

extension LoginViewController: LoginView {

}
