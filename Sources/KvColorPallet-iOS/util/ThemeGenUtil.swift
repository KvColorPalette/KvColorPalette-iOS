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
        let closestColor = ColorUtil.findClosestColor(givenColor: givenColor)
        
        let lightColorSet = generateLightThemeColorSet(givenColor: givenColor, closestColor: closestColor)
        let darkColorSet = generateDarkThemeColorSet(givenColor: givenColor, closestColor: closestColor)

        return AppThemePallet(light: lightColorSet, dark: darkColorSet)
    }
    
    /**
     * Generate light theme color pallet
     *
     * @param givenColor: base color that need to generate a theme pallet. Theme will generate according to the properties of this color
     * @closestColor: Closest color found in KvColorPallet-iOS library to the consumer givenColor
     *
     * @return ThemeColorPallet
     */
    private static func generateLightThemeColorSet(givenColor: Color, closestColor: KvColor) -> ThemeColorPallet {
        return ThemeColorPallet(
            base: givenColor,
            primary: closestColor.color,
            secondary: generateLightSecondaryColor(primaryColor: closestColor.color),
            tertiary: generateLightTeriaryColor(primaryColor: closestColor),
            quaternary: closestColor.color, // This is for use light theme primary color dark theme contrast color
            background: generateLightBackgroundColor(primaryColor: closestColor),
            onPrimary: Color.white,
            onSecondary: Color.white,
            shadow: Color.gray
        )
    }
    
    /**
     * Generate dark theme color pallet
     *
     * @param givenColor: base color that need to generate a theme pallet. Theme will generate according to the properties of this color
     * @closestColor: Closest color found in KvColorPallet-iOS library to the consumer givenColor
     *
     * @return ThemeColorPallet
     */
    private static func generateDarkThemeColorSet(givenColor: Color, closestColor: KvColor) -> ThemeColorPallet {
        return ThemeColorPallet(
            base: givenColor,
            primary: generateDarkPrimaryColor(primaryColor: closestColor.color),
            secondary: generateDarkSecondaryColor(primaryColor: closestColor.color),
            tertiary: generateDarkTeriaryColor(primaryColor: closestColor),
            quaternary: generateDarkSecondaryColor(primaryColor: closestColor.color), // This is for use light theme primary color dark theme contrast color
            background: generateDarkBackgroundColor(primaryColor: closestColor.color),
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
    
    private static func generateLightTeriaryColor(primaryColor: KvColor) -> Color {
        return primaryColor.changeColorPackage(colorPackage: ColorPackageType.PK_200).color
    }
    
    private static func generateLightBackgroundColor(primaryColor: KvColor) -> Color {
        return primaryColor.changeColorPackage(colorPackage: ColorPackageType.PK_50).color
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
    
    private static func generateDarkTeriaryColor(primaryColor: KvColor) -> Color {
        return primaryColor.changeColorPackage(colorPackage: ColorPackageType.PK_700).color
    }
    
    private static func generateDarkBackgroundColor(primaryColor: Color) -> Color {
        return Color(
            UIColor(red: primaryColor.rgb.red*0.1, green: primaryColor.rgb.green*0.1, blue: primaryColor.rgb.blue*0.1, alpha: 1)
        )
    }
}
