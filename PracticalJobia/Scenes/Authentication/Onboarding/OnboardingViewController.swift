//
//  OnboardingViewController.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 12/11/2021.
//

import UIKit
import Resolver

protocol OnboardingView: ViewProtocol {

}

class OnboardingViewController: UIViewController {

    @Injected private var presenter: OnboardingPresenter

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction private func login(_ sender: UIButton) {
        presenter.login()
    }

    @IBAction private func signup(_ sender: UIButton) { }

}

extension OnboardingViewController: OnboardingView {
    
}
