//
//  SignUpController.swift
//  IICsmallBusiness
//
//  Created by Vishaal Bommena on 6/18/18.
//  Copyright © 2018 Vishaal Bommena. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignUpController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var industryText: UITextField!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var register: UIButton!
    
    @IBAction func signUp(_ sender: Any) {
        Firebase.Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { (user, error) in
            if user != nil {
                //register succesful
                self.performSegue(withIdentifier: "segue", sender: self )
            } else {
                if let myError = error?.localizedDescription{
                    print(myError)
                } else {
                    print("Error")
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
