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
import SwiftUICore

public extension Color {
    
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
