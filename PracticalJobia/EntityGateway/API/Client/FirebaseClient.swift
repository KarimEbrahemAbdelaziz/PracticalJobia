//
//  FirebaseClient.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 06/11/2021.
//

import Foundation
import Firebase

protocol FirebaseClient {
    func login(
        with parameters: LoginParameters,
        completionHandler: @escaping (_ result: Result<User, Error>) -> Void
    )
}

class FirebaseClientImplementation: FirebaseClient {
    private let firebaseAuth: Auth

    init() {
        self.firebaseAuth = Auth.auth()
    }

    func login(with parameters: LoginParameters, completionHandler: @escaping (Result<User, Error>) -> Void) {
        firebaseAuth.signIn(
            withEmail: parameters.email,
            password: parameters.password
        ) { authResult, _ in
            guard let userId = authResult?.user.uid else {
                completionHandler(.failure(FirebaseClientError.loginFailed))
                return
            }

            // TODO: Change to call Firestore and fetch actuall user
            let mockedUserObject = User(
                id: userId,
                name: "Karim Ebrahem",
                email: "Karim@Jobia.com",
                phoneNumber: "01011191145",
                isEmailVerified: true,
                about: nil
            )
            completionHandler(.success(mockedUserObject))
        }
    }
}
