//
//  LabelExtension.swift
//  GOW_Practice
//
//  Created by Fernando Hernández on 08/03/25.
//

import UIKit

extension UILabel{
    /*func setCustomeFont(name: String, size: CGFloat){
        guard let costumeFont = UIFont(name: name, size: size) else {
            self.font = UIFont.systemFont(ofSize: size)
            return
        }
        
        self.font = costumeFont
        
    }*/
    
    func setCustomeFont(name: String, size: CGFloat, textStyle: UIFont.TextStyle){
        guard let costumeFont = UIFont(name: name, size: size) else {
            self.font = UIFont.systemFont(ofSize: size)
            return
        }
        
        self.font = costumeFont
        if #available(iOS 11.0, *){
            let fontMetrics = UIFontMetrics(forTextStyle: textStyle)
            self.font = fontMetrics.scaledFont(for: costumeFont)
            self.adjustsFontForContentSizeCategory = true
        }
        
    }
    
}
