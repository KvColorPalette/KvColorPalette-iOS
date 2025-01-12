//
//  File.swift
//  KvColorPallet-iOS
//
//  Created by Kavimal Wijewardana on 12/31/24.
//

import Foundation
import SwiftUICore
import UIKit

public class ThemeGenUtil {
    
    /**
     * This method generate a color pallet for a theme from given (provided) color by the consumer.
     *
     * @param givenColor: base color that need to generate a theme pallet. Theme will generate according to the properties of this color
     * @return AppThemePallet
     */
    internal static func generateThemeColorSet(givenColor: Color) -> AppThemePallet {        
        let lightColorSet = generateLightThemeColorSet(givenColor: givenColor)
        let darkColorSet = generateDarkThemeColorSet(givenColor: givenColor)

        return AppThemePallet(light: lightColorSet, dark: darkColorSet)
    }
    
    /**
     * Generate light theme color pallet
     *
     * @param givenColor: base color that need to generate a theme pallet. Theme will generate according to the properties of this color
     * @return ThemeColorPallet
     */
    private static func generateLightThemeColorSet(givenColor: Color) -> ThemeColorPallet {
        return ThemeColorPallet(
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
    
    /**
     * Generate dark theme color pallet
     *
     * @param givenColor: base color that need to generate a theme pallet. Theme will generate according to the properties of this color
     * @return ThemeColorPallet
     */
    private static func generateDarkThemeColorSet(givenColor: Color) -> ThemeColorPallet {
        return ThemeColorPallet(
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
