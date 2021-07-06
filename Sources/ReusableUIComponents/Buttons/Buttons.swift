//
//  Button.swift
//  Shopping Bag
//
//  Created by rabin pun on 30/06/2021.
//

import UIKit

open class Button: UIButton {
    
    // height
    var height: CGFloat = 0
    
    // width
    var width: CGFloat = 0
    
    //leftAnchorPadding
    var leadingPadding: CGFloat = 0
    
    //bottomAnchorPadding
    var bottomAnchorPadding: CGFloat = 0
    
    //rightAnchorPadding
    var trailingPadding: CGFloat = 0
    
    //topAnchorPadding
    var topAnchorPadding: CGFloat = 0
    
}

open class RoundedTextButton: Button {
    
    convenience init(font: Fonts, weight: UIFont.Weight, size: CGFloat, textColor: UIColor, title: String, isLargeScreen: Bool, backGroundColor: UIColor, cornerRadius: CGFloat = 20) {
        self.init()
        setAttributedTitle(title.getFontAttributedString(font: font, weight: weight, size: size, color: textColor), for: .normal)
        self.backgroundColor = backGroundColor
        layer.cornerRadius = cornerRadius
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}

open class UnderLinedTextButton: Button {
    
    convenience init(font: Fonts, weight: UIFont.Weight, size: CGFloat, textColor: UIColor, title: String) {
        self.init()
        setAttributedTitle(title.getFontAttributedString(font: font, weight: weight, size: size, color: textColor, underlined: true), for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
