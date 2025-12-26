//
//  Extension.swift
//  KvColorPalette-iOS
//
//  These extensions are available only to internal library usage.
//
//  Created by Kavimal Wijewardana on 12/27/24.
//
import SwiftUI
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
     * Accept hex value to generate color
     * @param hex [String] String value of hex [#ffffff or #000000]
     * This is a nullable return
     */
    init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.hasPrefix("#") ? String(hexSanitized.dropFirst()) : hexSanitized

        guard hexSanitized.count == 6 else { return nil }

        var rgbValue: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgbValue)

        let red = Double((rgbValue >> 16) & 0xFF) / 255.0
        let green = Double((rgbValue >> 8) & 0xFF) / 255.0
        let blue = Double(rgbValue & 0xFF) / 255.0

        self.init(red: red, green: green, blue: blue)
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
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.base) : UIColor(appTheme.light.base)
        }
    }
    
    static var defaultColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.defaultColor) : UIColor(appTheme.light.defaultColor)
        }
    }
    
    static var inverseDefaultColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.inverseDefaultColor) : UIColor(appTheme.light.inverseDefaultColor)
        }
    }
    
    static var primaryColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.primary) : UIColor(appTheme.light.primary)
        }
    }
    
    static var secondaryColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.secondary) : UIColor(appTheme.light.secondary)
        }
    }
    
    static var tertiaryColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.tertiary) : UIColor(appTheme.light.tertiary)
        }
    }
    
    static var quaternaryColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.quaternary) : UIColor(appTheme.light.quaternary)
        }
    }
    
    static var backgroundColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.background) : UIColor(appTheme.light.background)
        }
    }
    
    static var surfaceColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.surface) : UIColor(appTheme.light.surface)
        }
    }
    
    static var scrimColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.scrim) : UIColor(appTheme.light.scrim)
        }
    }
    
    static var shadowColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.shadow) : UIColor(appTheme.light.shadow)
        }
    }
    
    static var onPrimaryColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.onPrimary) : UIColor(appTheme.light.onPrimary)
        }
    }
    
    static var inverseOnPrimaryColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.inverseOnPrimary) : UIColor(appTheme.light.inverseOnPrimary)
        }
    }
    
    static var onSecondaryColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.onSecondary) : UIColor(appTheme.light.onSecondary)
        }
    }
    
    static var onBackgroundColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.onBackground) : UIColor(appTheme.light.onBackground)
        }
    }
    
    static var inverseOnBackgroundColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.inverseOnBackground) : UIColor(appTheme.light.inverseOnBackground)
        }
    }
    
    static var onSurfaceColor: UIColor {
        return UIColor { traitCollection in
            guard let appTheme = KvColorPalette.appThemePalette else { return .clear }
            return traitCollection.userInterfaceStyle == .dark ? UIColor(appTheme.dark.onSurface) : UIColor(appTheme.light.onSurface)
        }
    }
}
