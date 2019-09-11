//
//  ViewController.swift
//  NativeToFlutter
//
//  Created by LeoShu on 2019/9/5.
//  Copyright © 2019 LeoShu. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    @IBOutlet weak var inputTelNum: UITextField!
    @IBOutlet weak var inputPwd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type:UIButton.ButtonType.custom)
        button.addTarget(self, action: #selector(handleButtonAction), for: .touchUpInside)
        button.setTitle("Press me", for: UIControl.State.normal)
        button.frame = CGRect(x: 80.0, y: 210.0, width: 160.0, height: 40.0)
        button.backgroundColor = UIColor.blue
        self.view.addSubview(button)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    @objc func handleButtonAction() {
        let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine;
        guard flutterEngine != nil else {
            print("flutterEngine is nil")
            return
        }
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)!;
        flutterViewController.setInitialRoute("route1")
        self.present(flutterViewController, animated: false, completion: nil)
    }
    
    @IBAction func pressForgot(_ sender: Any) {
        print("pressForgot")
    }
    
    @IBAction func pressLogin(_ sender: Any) {
        let account = inputTelNum.text
        let pwd = inputPwd.text
        print("account = \(account ?? "null") .. pwd = \(pwd ?? "null")")
    }
    
    @IBAction func pressRegister(_ sender: Any) {
        print("pressRegister")
    }
}

