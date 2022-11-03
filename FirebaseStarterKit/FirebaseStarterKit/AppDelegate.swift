//
//  AppDelegate.swift
//  FirebaseStarterKit
//
//  Created by Florian Marcu on 1/28/23.
//  Copyright © 2023 Instamobile. All rights reserved.
//

import Firebase
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let pushManager = PushNotificationManager(userID: "currently_logged_in_user_id")
        pushManager.registerForPushNotifications()

        FirebaseApp.configure()

        let sender = PushNotificationSender()
        sender.sendPushNotification(to: "token", title: "Notification title", body: "Notification body")
    
        return true
    }
}

