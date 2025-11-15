//
//  OpenExtension.swift
//  KvColorPalette-iOS
//
//  These extensions are available publicly in & out of the library.
//
//  Created by Kavimal Wijewardana on 1/5/25.
//
import Foundation
import UIKit
import SwiftUI

public extension Color {
    
    /**
     * Seperate rgb (red, green, blue) colors of given color's components
     */
    var rgb: (red: CGFloat, green: CGFloat, blue: CGFloat, opacity: CGFloat) {
        typealias uiColor = UIColor
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var opasity: CGFloat = 0
        
        guard uiColor(self).getRed(&red, green: &green, blue: &blue, alpha: &opasity) else {
            return (0,0,0,0)
        }
        
        return (red, green, blue, opasity)
    }
    
    /**
     * Separate hsl (hue, saturation and brightness) of the given color.
     */
    var hsl: (hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) {
        var hue: CGFloat  = 0.0
        var saturation: CGFloat = 0.0
        var brightness: CGFloat = 0.0
        var alpha: CGFloat = 0.0
        
        let uiColor = UIColor(self)
        uiColor.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        
        return (hue, saturation, brightness, alpha)
    }
    
    /**
     * Extension property to check if a [Color] is a high-light color.
     */
    var isHightLightColor: Bool {
        return if hsl.brightness >= 0.7 {
            true
        } else {
            false
        }
    }
    
    /**
     * Expose the theme-color pallet in `Color` object in SwiftUI.
     */
    public static var themePalette: ThemeColorPalette {
        return ThemeColorPalette(
            base: Color(UIColor.baseColor),
            primary: Color(UIColor.primaryColor),
            secondary: Color(UIColor.secondaryColor),
            tertiary: Color(UIColor.tertiaryColor),
            quaternary: Color(UIColor.quaternaryColor),
            background: Color(UIColor.backgroundColor),
            onPrimary: Color(UIColor.onPrimaryColor),
            onSecondary: Color(UIColor.onSecondaryColor),
            shadow: Color(UIColor.shadowColor))
    }
}
