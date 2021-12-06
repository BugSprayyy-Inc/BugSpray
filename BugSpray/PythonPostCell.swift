//
//  PythonPostCell.swift
//  BugSpray
//
//  Created by Cynthia Gonzalez on 12/6/21.
//

import UIKit

class PythonPostCell: UITableViewCell {

    @IBOutlet weak var photoView: UIImageView!

    @IBOutlet weak var usernameLabel: UILabel!


    @IBOutlet weak var captionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
