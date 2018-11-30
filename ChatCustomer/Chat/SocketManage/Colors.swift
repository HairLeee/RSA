//
//  Colors.swift
//  FL_challenge
//
//  Created by Enrico Piovesan on 2017-04-01.
//  Copyright © 2017 Enrico Piovesan. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var grayBlue:UIColor {
        return UIColor(red: 64/255, green: 77/255, blue: 96/255, alpha: 1)
    }
    static var blueBorder:UIColor {
        return UIColor(red: 64/255, green: 77/255, blue: 96/255, alpha: 1)
    }
    static var mainGreen:UIColor {
        return UIColor(red: 80/255, green: 227/255, blue: 194/255, alpha: 1)
    }
    static var buttonBorder:UIColor {
        return UIColor(red: 134/255, green: 238/255, blue: 215/255, alpha: 1)
    }
    static var purple:UIColor {
        return UIColor(red: 175/255, green: 145/255, blue: 221/255, alpha: 1)
    }
    static var purpleStart:UIColor {
        return UIColor(red: 142/255, green: 85/255, blue: 209/255, alpha: 1)
    }
    static var purpleEnd:UIColor {
        return UIColor(red: 102/255, green: 88/255, blue: 228/255, alpha: 1)
    }
    static var chatBackgroundStart:UIColor {
        return UIColor(red: 30/255, green: 37/255, blue: 46/255, alpha: 1)
    }
    static var chatBackgroundEnd:UIColor {
        return UIColor(red: 57/255, green: 68/255, blue: 85/255, alpha: 1)
    }
    static var warning:UIColor {
        return UIColor(red: 195/255, green: 195/255, blue: 34/255, alpha: 1)
    }
    static var error:UIColor {
        return UIColor(red: 231/255, green: 76/255, blue: 60/255, alpha: 1)
    }
    static var success:UIColor {
        return UIColor(red: 26/255, green: 188/255, blue: 156/255, alpha: 1)
    }
    static var grey800:UIColor {
        return UIColor(red: 34/255, green: 34/255, blue: 34/255, alpha: 1)
    }
    static var grey700:UIColor {
        return UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
    }
    static var grey600:UIColor {
        return UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1)
    }
    static var grey500:UIColor {
        return UIColor(red: 153/255, green: 153/255, blue: 153/255, alpha: 1)
    }
    static var grey400:UIColor {
        return UIColor(red: 187/255, green: 187/255, blue: 187/255, alpha: 1)
    }
    static var grey300:UIColor {
        return UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1)
    }
    static var grey200:UIColor {
        return UIColor(red: 221/255, green: 221/255, blue: 221/255, alpha: 1)
    }
    static var grey100:UIColor {
        return UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1)
    }
}

let ORANGE_COLOR = "e86a12"
let LIGHT_ORANGE_COLOR = "ffaa4f"

let GRAY_COLOR = "616060"
let LIGHT_GRAY_COLOR = "ebebeb"
let LINE_GRAY_COLOR = "dddddd"

extension UIColor {
    
    public convenience init?(hexString: String) {
        
        var hexColor = hexString
        
        if hexString.hasPrefix("#") {
            let start = hexString.index(hexString.startIndex, offsetBy: 1)
            hexColor = hexString.substring(from: start)
        }
        
        let scanner = Scanner(string: hexColor)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
    
    var toHexString: String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        return String(
            format: "%02X%02X%02X",
            Int(r * 0xff),
            Int(g * 0xff),
            Int(b * 0xff)
        )
    }
    
}

