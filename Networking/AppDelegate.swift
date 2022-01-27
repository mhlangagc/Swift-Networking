//
//  AppDelegate.swift
//  Networking
//
//  Created by Gugulethu Mhlanga on 2021/11/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = setupWindow()
        return true
    }
    
    func setupWindow() -> UIWindow {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let homeViewController = HomeViewController()
        window.makeKeyAndVisible()
        window.tintColor = UIColor.black
        window.rootViewController = UINavigationController(rootViewController: homeViewController)
        return window
    }
}

