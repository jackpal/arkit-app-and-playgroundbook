//
//  AppDelegate.swift
//  arkit2
//
//  Created by Jack Palevich on 3/19/19.
//  Copyright © 2019 Jack Palevich. All rights reserved.
//

import UIKit
import ARKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    let viewController = ViewController()
    window!.rootViewController = viewController
    window!.makeKeyAndVisible()
    return true
  }


}

