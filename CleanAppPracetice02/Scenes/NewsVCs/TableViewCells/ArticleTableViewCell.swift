//
//  ArticleTableViewCell.swift
//  CleanAppPracetice02
//
//  Created by Papon Supamongkonchai on 22/7/2565 BE.
//

import Foundation
import UIKit

class ArticleTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel:UILabel!
    @IBOutlet var descriptionLabel:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
