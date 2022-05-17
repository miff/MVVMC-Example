//
//  AppDelegate.swift
//  Collection
//
//  Created by miff on 17.5.22..
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let presenter = UINavigationController()
        let coordinator = HomeCoordinator(presenter: presenter)
        coordinator.start()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = presenter
        return true
    }
}

