//
//  AppDelegate.swift
//  TapJoyStatusBarProblem
//
//  Created by Hasan Rafi on 7/31/16.
//  Copyright © 2016 KickBackApps. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func configureTapJoy() {
        let nc = NSNotificationCenter.defaultCenter()
        nc.addObserver(self, selector: #selector(tjcConnectSuccess(_:)), name:TJC_CONNECT_SUCCESS, object: nil)
        nc.addObserver(self, selector: #selector(tjcConnectFail(_:)), name:TJC_CONNECT_FAILED, object: nil)
        
        Tapjoy.setDebugEnabled(true)
        Tapjoy.connect("y9mtZY5PT8iAABWBoi7vvAEBEnfmJ68XMaKSIgn3tTMzZWrIG603piu1zzzl")
        
    }
    
    func tjcConnectSuccess(notifyObj: NSNotification) {
        print("Tapjoy connect Succeeded")
    }
    
    func tjcConnectFail(notifyObj: NSNotification) {
        print("Tapjoy connect Failed")
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        configureTapJoy()
        return true
    }

}

