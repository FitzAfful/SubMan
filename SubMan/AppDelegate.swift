//
//  AppDelegate.swift
//  SubMan
//
//  Created by Fitzgerald Afful on 17/03/2022.
//

import Foundation
import UIKit
import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        setupFirebase()
        return true
    }

    func setupFirebase() {
        FirebaseApp.configure()
    }
}


extension AppDelegate {

}
