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
    public let defaultColor: Color
    public let inverseDefaultColor: Color
    public let primary: Color
    public let secondary: Color
    public let tertiary: Color
    public let quaternary: Color
    public let background: Color
    public let surface: Color
    public let scrim: Color
    public let shadow: Color
    public let onPrimary: Color
    public let inverseOnPrimary: Color
    public let onSecondary: Color
    public let onBackground: Color
    public let inverseOnBackground: Color
    public let onSurface: Color
    
    public init(base: Color, defaultColor: Color, inverseDefaultColor: Color, primary: Color, secondary: Color, tertiary: Color, quaternary: Color, background: Color, surface: Color, scrim: Color, shadow: Color, onPrimary: Color, inverseOnPrimary: Color, onSecondary: Color, onBackground: Color, inverseOnBackground: Color, onSurface: Color) {
        self.base = base
        self.defaultColor = defaultColor
        self.inverseDefaultColor = inverseDefaultColor
        self.primary = primary
        self.secondary = secondary
        self.tertiary = tertiary
        self.quaternary = quaternary
        self.background = background
        self.surface = surface
        self.scrim = scrim
        self.shadow = shadow
        self.onPrimary = onPrimary
        self.inverseOnPrimary = inverseOnPrimary
        self.onSecondary = onSecondary
        self.onBackground = onBackground
        self.inverseOnBackground = inverseOnBackground
        self.onSurface = onSurface
    }
}
