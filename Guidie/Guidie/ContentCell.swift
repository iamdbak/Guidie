//
//  ContentCell.swift
//  Vizit
//
//  Created by Divyaraj Bakrola on 04/29/19.
//  Copyright © 2018 Guidie. All rights reserved.//

import UIKit

class ContentCell: UITableViewCell {
    
    
    @IBOutlet weak var contentType: UILabel!
    
    @IBOutlet weak var contentImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
