//
//  File.swift
//  
//
//  Created by ebpearls on 05/07/2021.
//

import UIKit

/// fonts to be used should be enum must follow this protocol
public protocol Fonts {
    
    var bold: String { get }
    
    var semibold: String { get }
    
    var regular: String { get }
    
    var medium: String { get }
    
}

public extension UIFont {
    
    static func font(_ font: Fonts, weight: Weight, size: CGFloat) -> UIFont {
        let fontName = weight.name(with: font)
        guard let font = UIFont(name: fontName, size: size) else {
            assertionFailure("The font named \(fontName) is not valid. Please check it is correct")
            return .systemFont(ofSize: size)
        }
        return font
    }
    
    static func printAllSupportedFontsBySystem() {
        for family in UIFont.familyNames {
            let font = UIFont.fontNames(forFamilyName: family)
            debugPrint(font)
        }
    }

}

// The weigtage values for supported fonts
public extension UIFont.Weight {
    
    func name(with font: Fonts) -> String {
        switch self {
        case .bold:
            return font.bold
        case .semibold:
            return font.semibold
        case .regular:
            return font.regular
        case .medium:
            return font.medium
        default:
            return font.regular
        }
    }
        
}


