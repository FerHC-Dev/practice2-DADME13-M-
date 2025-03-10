//
//  MerchandiseCell.swift
//  GOW_Practice
//
//  Created by Fernando Hernández on 09/03/25.
//

import UIKit

class MerchandiseCell: UICollectionViewCell {
    
    
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var mTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mTitle.setCustomeFont(name: Constants.fontTitleApp, size: Constants.fontSizeDefault, textStyle: .title1)
    }
    
}
