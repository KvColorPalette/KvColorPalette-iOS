//
//  ThemeGenUtil.swift
//  KvColorPalette-iOS
//
//  Created by Kavimal Wijewardana on 12/31/24.
//

import Foundation
import SwiftUI
import UIKit

public class ThemeGenUtil {
        
    /// This method generate a color pallet for a theme from given (provided) color by the consumer.
    ///
    ///- Parameters:
    /// - givenColor: Base color that need to generate a theme pallet. Theme will generate according to the properties of this color
    ///
    ///- Returns: `AppThemePalette`
    ///
    internal static func generateThemeColorSet(givenColor: Color) -> AppThemePalette {
        let lightColorSet = generateLightThemeColorSet(givenColor: givenColor)
        let darkColorSet = generateDarkThemeColorSet(givenColor: givenColor)

        return AppThemePalette(light: lightColorSet, dark: darkColorSet)
    }
        
    /// Generate light theme color pallet.
    ///
    /// - Parameters:
    ///  - givenColor: Base color that need to generate a theme pallet. Theme will generate according to the properties of this color.
    ///
    /// - Returns: `ThemeColorPalette`
    ///
    private static func generateLightThemeColorSet(givenColor: Color) -> ThemeColorPalette {
        return ThemeColorPalette(
            base: givenColor,
            primary: givenColor,
            secondary: generateLightSecondaryColor(primaryColor: givenColor),
            tertiary: generateLightTeriaryColor(primaryColor: givenColor),
            quaternary: givenColor, // This is for use light theme primary color dark theme contrast color
            background: generateLightBackgroundColor(primaryColor: givenColor),
            onPrimary: Color.white,
            onSecondary: Color.white,
            shadow: Color.gray
        )
    }
        
    /// Generate dark theme color pallet
    ///
    /// - Parameters:
    ///  - givenColor: Base color that need to generate a theme pallet. Theme will generate according to the properties of this color
    ///
    /// - Returns: `ThemeColorPalette`
    ///
    private static func generateDarkThemeColorSet(givenColor: Color) -> ThemeColorPalette {
        return ThemeColorPalette(
            base: givenColor,
            primary: generateDarkPrimaryColor(primaryColor: givenColor),
            secondary: generateDarkSecondaryColor(primaryColor: givenColor),
            tertiary: generateDarkTeriaryColor(primaryColor: givenColor),
            quaternary: generateDarkSecondaryColor(primaryColor: givenColor), // This is for use light theme primary color dark theme contrast color
            background: generateDarkBackgroundColor(primaryColor: givenColor),
            onPrimary: Color.white,
            onSecondary: Color.black,
            shadow: Color.white
        )
    }
    
    private static func generateLightSecondaryColor(primaryColor: Color) -> Color {
        return Color(
            UIColor(red: primaryColor.rgb.red/2, green: primaryColor.rgb.green/2, blue: primaryColor.rgb.blue/2, alpha: 1)
        )
    }
    
    private static func generateLightTeriaryColor(primaryColor: Color) -> Color {
        return Color(hue: primaryColor.hsl.hue, saturation: 0.5, brightness: 0.8)
    }
    
    private static func generateLightBackgroundColor(primaryColor: Color) -> Color {
        return Color(hue: primaryColor.hsl.hue, saturation: 0.05, brightness: 1)
    }
    
    private static func generateDarkPrimaryColor(primaryColor: Color) -> Color {
        return Color(
            UIColor(red: primaryColor.rgb.red*0.3, green: primaryColor.rgb.green*0.3, blue: primaryColor.rgb.blue*0.3, alpha: 1)
        )
    }
    
    private static func generateDarkSecondaryColor(primaryColor: Color) -> Color {
        return Color(
            UIColor(red: primaryColor.rgb.red*1.5, green: primaryColor.rgb.green*1.5, blue: primaryColor.rgb.blue*1.5, alpha: 1)
        )
    }
    
    private static func generateDarkTeriaryColor(primaryColor: Color) -> Color {
        return Color(hue: primaryColor.hsl.hue, saturation: 1, brightness: 0.5)
    }
    
    private static func generateDarkBackgroundColor(primaryColor: Color) -> Color {
        return Color(
            UIColor(red: primaryColor.rgb.red*0.1, green: primaryColor.rgb.green*0.1, blue: primaryColor.rgb.blue*0.1, alpha: 1)
        )
    }
}
