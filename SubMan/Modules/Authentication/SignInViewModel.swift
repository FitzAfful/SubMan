//
//  SignInViewModel.swift
//  SubMan
//
//  Created by Fitzgerald Afful on 17/03/2022.
//

import Foundation
import GoogleSignIn
import FirebaseAuth

class SignInViewModel: ObservableObject {

    var authManager: AuthManager? = AuthManager()
    var cryptHelper: CryptHelper? = CryptHelper()
    var nonce: String?

    // Use Publishers and Combine to wait till signin is complete then revert to view
    
    func firebaseGoogleLogin(with googleUser: GIDGoogleUser) {
        guard let credential = authManager?.getCredentialFromGoogle(with: googleUser) else { return }
        authManager?.loginUser(credential: credential) { (result, error) in
            self.signedIn(error: error, result: result)
        }
    }

    func firebaseAppleLogin(with idToken: String) {
        guard let credential = authManager?.getCredentialFromApple(with: idToken, nonce: nonce!) else { return }
        authManager?.loginUser(credential: credential) { (result, error) in
            self.signedIn(error: error, result: result)
        }
    }

    func signedIn(error: Error?, result: AuthDataResult?)  {
        var errorMessage: String?
        if error != nil {
            if let errorCode = AuthErrorCode(rawValue: error!._code) {
                switch errorCode {
                case.wrongPassword:
                    errorMessage = "You entered an invalid password please try again!"
                case .weakPassword:
                    errorMessage = "You entered a weak password. Please choose another!"
                case .emailAlreadyInUse:
                    errorMessage = "An account with this email already exists. Please log in!"
                case .accountExistsWithDifferentCredential:
                    errorMessage = "This account exists with different credentials"
                default:
                    errorMessage = "Unexpected error \(errorCode.rawValue) please try again!"
                }
            }
        }
    }

    func get256Sha() -> String {
        self.nonce = cryptHelper?.randomNonceString()
        return cryptHelper?.sha256(self.nonce!) ?? ""
    }
}
