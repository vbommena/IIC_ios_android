//
//  ViewController.swift
//  IICsmallBusiness
//
//  Created by Vishaal Bommena on 6/7/18.
//  Copyright © 2018 Vishaal Bommena. All rights reserved.
//

import UIKit
import LocalAuthentication
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var visualEffectLogin: UIVisualEffectView!
    var effect:UIVisualEffect!
    @IBOutlet var loginView: UIView!
    @IBAction func Login(_ sender: Any) {
        animateOut()
    }
    @IBAction func cancelLogin(_ sender: Any) {
        animateOut()
    }
    @IBAction func dismissPopup(_ sender: Any) {
         animateOut()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        effect = visualEffectLogin.effect
        visualEffectLogin.effect = nil
        loginView.layer.cornerRadius = 5
    }

    @IBAction func loginModal(_ sender: UIButton) {
        animateIn()
    }
    func animateIn(){
        self.view.addSubview(loginView)
        loginView.center = self.view.center
        loginView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        loginView.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
            self.visualEffectLogin.effect = self.effect
            self.loginView.alpha = 1
            self.loginView.transform = CGAffineTransform.identity
        }
    }
    
    func animateOut(){
        UIView.animate(withDuration: 0.3, animations: {
            self.loginView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.loginView.alpha = 0
            self.visualEffectLogin.effect = nil
        }) { (success:Bool) in
            self.loginView.removeFromSuperview()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

