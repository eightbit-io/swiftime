//
//  AppDelegate.swift
//  swiftime
//
//  Created by mg on 2/07/2014.
//  Copyright (c) 2014 bitcraft. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        var viewController = FUNViewController()
        self.window!.rootViewController = viewController
        
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
    }


}

