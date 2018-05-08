//
//  postCell.swift
//  foundApp
//
//  Created by Judy Gatobu on 4/23/18.
//  Copyright © 2018 Judy Gatobu. All rights reserved.
//

import UIKit

class postCell: UITableViewCell {

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var ItemName1: UIButton!
    
    
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var reviewButton: UIButton!
    @IBOutlet weak var sellerNameButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
