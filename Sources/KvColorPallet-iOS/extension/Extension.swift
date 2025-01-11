//
//  Extension.swift
//  KvColorPallet-iOS
//
//  These extensions are available only to internal library usage.
//
//  Created by Kavimal Wijewardana on 12/27/24.
//
import SwiftUICore
import UIKit

internal extension Color {
    /**
     * Accept hex value to generate color
     * @param hex [UInt] interger value of hex
     * @param alpha [Double] double value of opacity of the color
     */
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
    
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
     * Return hex value of the color
     */
    var hex: String {
        String(
            format: "#%02x%02x%02x",
            Int(rgb.red * 255),
            Int(rgb.green * 255),
            Int(rgb.blue * 255)
        )
    }
    
    /**
     * Return hex value with alpha of the color
     */
    var hexWithAlpha: String {
        String(
            format: "#%02x%02x%02x%02x",
            Int(rgb.red * 255),
            Int(rgb.green * 255),
            Int(rgb.blue * 255),
            Int(rgb.opacity * 255)
        )
    }
}

internal extension UIColor {
    static var baseColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPallet.appThemePallet else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.base) : UIColor(appTheme.light.base)
        }
    }
    
    static var primaryColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPallet.appThemePallet else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.primary) : UIColor(appTheme.light.primary)
        }
    }
    
    static var secondaryColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPallet.appThemePallet else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.secondary) : UIColor(appTheme.light.secondary)
        }
    }
    
    static var tertiaryColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPallet.appThemePallet else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.tertiary) : UIColor(appTheme.light.tertiary)
        }
    }
    
    static var onPrimaryColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPallet.appThemePallet else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.onPrimary) : UIColor(appTheme.light.onPrimary)
        }
    }
    
    static var onSecondaryColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPallet.appThemePallet else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.onSecondary) : UIColor(appTheme.light.onSecondary)
        }
    }
    
    static var shadowColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPallet.appThemePallet else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.shadow) : UIColor(appTheme.light.shadow)
        }
    }
    
    static var backgroundColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPallet.appThemePallet else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.background) : UIColor(appTheme.light.background)
        }
    }
}
