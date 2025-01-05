//
//  OpenExtension.swift
//  KvColorPallet-iOS
//
//  Created by Kavimal Wijewardana on 1/5/25.
//
import Foundation
import UIKit
import SwiftUICore

extension UIColor {
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

public extension Color {
    public static var baseColor: Color {
        return Color(UIColor.baseColor)
    }
    
    public static var primaryColor: Color {
        return Color(UIColor.primaryColor)
    }
    
    public static var secondaryColor: Color {
        return Color(UIColor.secondaryColor)
    }
    
    public static var tertiaryColor: Color {
        return Color(UIColor.tertiaryColor)
    }
    
    public static var onPrimaryColor: Color {
        return Color(UIColor.onPrimaryColor)
    }
    
    public static var onSecondaryColor: Color {
        return Color(UIColor.onSecondaryColor)
    }
    
    public static var shadowColor: Color {
        return Color(UIColor.shadowColor)
    }
    
    public static var backgroundColor: Color {
        return Color(UIColor.backgroundColor)
    }
}
