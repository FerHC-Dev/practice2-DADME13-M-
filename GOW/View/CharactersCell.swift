//
//  CharactersCell.swift
//  GOW_Practice
//
//  Created by Fernando Hernández on 09/03/25.
//

import UIKit

class CharactersCell: UICollectionViewCell {
    
    @IBOutlet weak var cImage: UIImageView!
    @IBOutlet weak var cName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cName.setCustomeFont(name: Constants.fontTitleApp, size: Constants.fontSizeDefault, textStyle: .title1)
        
    }
}
