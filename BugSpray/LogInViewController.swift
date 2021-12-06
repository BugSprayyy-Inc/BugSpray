//
//  LogInViewController.swift
//  BugSpray
//
//  Created by Juan Gonzalez on 11/14/21.
//

import UIKit
import Parse

class LogInViewController: UIViewController {

    @IBOutlet weak var Username: UITextField!
    
    @IBOutlet weak var Password: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "userLoggedIn") == true{
            self.performSegue(withIdentifier: "loginSegue", sender: self)
    }
}
    
    @IBAction func LogIn(_ sender: Any) {
        let username = Username.text!
        let password = Password.text!

        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            if (user != nil){
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else{
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
