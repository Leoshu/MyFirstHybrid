//
//  AppDelegate.swift
//  NativeToFlutter
//
//  Created by LeoShu on 2019/9/5.
//  Copyright © 2019 LeoShu. All rights reserved.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {
    
    var flutterEngine: FlutterEngine?

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let dart = FlutterDartProject();
        flutterEngine = FlutterEngine(name: "io.flutter", project: dart)
        flutterEngine?.run(withEntrypoint: nil)
        GeneratedPluginRegistrant.register(with: flutterEngine)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

}

