//
//  AppDelegate.swift
//  WhatsAppClone
//
//  Created by Peter Shaburov on 6/1/21.
//

import UIKit
import Firebase
import UserNotifications

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private let dialogueDatabase = DialogueDatabase()
    private let userDatabase = UserDatabase()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        self.window = UIWindow(frame: UIScreen.main.bounds)
        var controller: UIViewController?
        if UserDefaults.standard.object(forKey: Constants.UserDefaults.currentUser) == nil {
            controller = LoginViewController()
        } else {
            let userData = UserDefaults.standard.object(forKey: Constants.UserDefaults.currentUser) as? Data
            let user = try? JSONDecoder().decode(User.self, from: userData!)
            User.setCurrent(user!)
            let chatVC = ChatsViewController()
            chatVC.dialogueDatabase = dialogueDatabase
            chatVC.userDatabase = userDatabase
            controller = chatVC
        }
        let mainNavigationController = UINavigationController()
        
        mainNavigationController.viewControllers = [controller!]
        registerForPushNotifications()
        window?.rootViewController = mainNavigationController
        window?.makeKeyAndVisible()
        FirebaseApp.configure()
        return true
    }
    
    func registerForPushNotifications() {
      UNUserNotificationCenter.current()
        .requestAuthorization(options: [.alert, .sound, .badge]) { granted, _ in
          print("Permission granted: \(granted)")
        }
    }
}

