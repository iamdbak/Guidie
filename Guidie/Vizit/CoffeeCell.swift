//
//  CoffeeCell.swift
//  Vizit
//
//  Created by Syed Kazmi on 04/29/19.
//  Copyright © 2018 Guidie. All rights reserved.
//

import UIKit

class CoffeeCell: UITableViewCell {
    
    
    @IBOutlet weak var coffeeImage: UIImageView!
    
    
    @IBOutlet weak var businessName: UILabel!
    
    
    @IBOutlet weak var businessPrice: UILabel!
    
    
    @IBOutlet weak var businessRating: UILabel!
    
    @IBOutlet weak var businessLocation: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
