//
//  File.swift
//  
//
//  Created by rabin pun on 05/07/2021.
//

import UIKit

public extension String {
    
    func getFontAttributedString(font: Fonts, weight: UIFont.Weight, size: CGFloat, color: UIColor, underlined: Bool = false) -> NSAttributedString {
        
    var myAttributes:Dictionary = [
        NSAttributedString.Key.font : UIFont.font(font, weight: weight, size: size),
        NSAttributedString.Key.foregroundColor : color
    ]
        
        if underlined {
            myAttributes.updateValue(NSUnderlineStyle.single.rawValue as NSObject, forKey: NSAttributedString.Key.underlineStyle)
        }
        
    return NSAttributedString(string: self, attributes: myAttributes)
    }
}
