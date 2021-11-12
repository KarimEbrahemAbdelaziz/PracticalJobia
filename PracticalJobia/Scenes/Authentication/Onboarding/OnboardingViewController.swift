//
//  OnboardingViewController.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 12/11/2021.
//

import UIKit

protocol OnboardingView: ViewProtocol {

}

class OnboardingViewController: UIViewController {

    var presenter: OnboardingPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction private func login(_ sender: UIButton) {
        presenter.login()
    }

    @IBAction private func signup(_ sender: UIButton) {
        presenter.signup()
    }

}

extension OnboardingViewController: OnboardingView {
    
}
