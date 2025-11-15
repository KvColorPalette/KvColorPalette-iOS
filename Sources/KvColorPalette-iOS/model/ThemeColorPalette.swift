//
//  File.swift
//  KvColorPalette-iOS
//
//  Created by Kavimal Wijewardana on 12/31/24.
//

import Foundation
import SwiftUI

/**
 * This is a data object to hold two `ThemeColorPalette` object for light and dark theme generated from library.
 *
 * @see ThemeColorPalette
 */
public struct AppThemePalette {
    public let light: ThemeColorPalette
    public let dark: ThemeColorPalette
    
    public init(light: ThemeColorPalette, dark: ThemeColorPalette) {
        self.light = light
        self.dark = dark
    }
}

/**
 * This is a data object that holds set of colors in a theme that use for different purposes in the application.
 */
public struct ThemeColorPalette {
    public let base: Color
    public let primary: Color
    public let secondary: Color
    public let tertiary: Color
    public let quaternary: Color
    public let background: Color
    public let onPrimary: Color
    public let onSecondary: Color
    public let shadow: Color
    
    public init(base: Color, primary: Color, secondary: Color, tertiary: Color, quaternary: Color, background: Color, onPrimary: Color, onSecondary: Color, shadow: Color) {
        self.base = base
        self.primary = primary
        self.secondary = secondary
        self.tertiary = tertiary
        self.quaternary = quaternary
        self.background = background
        self.onPrimary = onPrimary
        self.onSecondary = onSecondary
        self.shadow = shadow
    }
}
