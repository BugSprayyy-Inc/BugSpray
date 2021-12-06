//
//  SignUpViewController.swift
//  BugSpray
//
//  Created by Cynthia Gonzalez on 11/14/21.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {
    @IBOutlet weak var Username: UITextField!

    @IBOutlet weak var Password: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func OnSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = Username.text
        user.password = Password.text

        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error onSignup \(String(describing: error?.localizedDescription))")
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
