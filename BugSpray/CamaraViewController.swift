//
//  CamaraViewController.swift
//  BugSpray
//
//  Created by Juan Gonzalez on 11/30/21.
//

import UIKit
import Parse
import AlamofireImage

class CamaraViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var CommentField: UITextField!
    @IBOutlet weak var CamaraView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SubmitButton(_ sender: Any) {
        let Post = PFObject(className:  "Post")
        
        Post["caption"] = CommentField.text!
        Post["owner"] = PFUser.current()!
        
        
        let imageData = CamaraView.image!.pngData()
        let file = PFFileObject(name: "image.png", data: imageData!)
        
        Post["image"] = file
        
        Post.saveInBackground { success, error in
            if success{
                
                print ("saved!!!!")
                self.dismiss(animated: true, completion: nil)
            }else {
                print ("error!!!!!!")
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
