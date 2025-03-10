//
//  WeaponsCell.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class WeaponsCell: UITableViewCell {

    @IBOutlet weak var wDescription: UILabel!
    @IBOutlet weak var wPoster: UIImageView!
    @IBOutlet weak var wName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        wName.setCustomeFont(name: Constants.fontBodyApp, size: Constants.fontSizeDefault, textStyle: .title1)
        
        wDescription.setCustomeFont(name: Constants.fontBodyApp, size: Constants.fontSizeBody, textStyle: .body)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
