//
//  AppDelegate.swift
//  Swift_sinaWB
//
//  Created by Liao PanPan on 2017/3/24.
//  Copyright © 2017年 Liao PanPan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window=UIWindow()
        window?.backgroundColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        window?.rootViewController=WBMainViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

}

