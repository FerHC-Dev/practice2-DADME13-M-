//
//  StringExtension.swift
//  GOW_Practice
//
//  Created by Fernando Hernández on 08/03/25.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
    
    func localized(comment: String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
}
