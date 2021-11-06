//
//  APIAuthenticationGateway.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 06/11/2021.
//

import Foundation

class APIAuthenticationGatewayImplementation: AuthenticationGateway {
    private let firebaseClient: FirebaseClient

    init(firebaseClient: FirebaseClient) {
        self.firebaseClient = firebaseClient
    }

    func login(parameters: LoginParameters, completionHandler: @escaping (Result<User, Error>) -> Void) {
        firebaseClient.login(with: parameters, completionHandler: completionHandler)
    }
}
