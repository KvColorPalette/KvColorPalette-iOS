//
//  OpenExtension.swift
//  KvColorPallet-iOS
//
//  These extensions are available publicly in & out of the library.
//
//  Created by Kavimal Wijewardana on 1/5/25.
//
import Foundation
import UIKit
import SwiftUICore

public extension Color {
    
    /**
     * Expose the theme-color pallet in `Color` object in SwiftUI.
     */
    public static var themePallet: ThemeColorPallet {
        return ThemeColorPallet(
            base: Color(UIColor.baseColor),
            primary: Color(UIColor.primaryColor),
            secondary: Color(UIColor.secondaryColor),
            tertiary: Color(UIColor.tertiaryColor),
            background: Color(UIColor.backgroundColor),
            onPrimary: Color(UIColor.onPrimaryColor),
            onSecondary: Color(UIColor.onSecondaryColor),
            shadow: Color(UIColor.shadowColor))
    }
}
