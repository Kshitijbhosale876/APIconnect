//
//  UserCell.swift
//  APIconnect
//
//  Created by Kshitij Bhosale on 02/12/21.
//

import UIKit

class UserCell: UITableViewCell {
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblState: UILabel!
    
    @IBOutlet weak var lblLogin: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
