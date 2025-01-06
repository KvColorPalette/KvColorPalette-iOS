//
//  File.swift
//  kv-ios-color-pallet
//
//  Created by Kavimal Wijewardana on 12/31/24.
//

import Foundation
import SwiftUICore
import UIKit

public class ThemeGenUtil {
    
    internal static func generateThemeColorSet(givenColor: Color) -> AppThemePallet {
        let closestColor = ColorUtil.findClosestColor(givenColor: givenColor)
        
        let lightColorSet = generateLightThemeColorSet(givenColor: givenColor, closestColor: closestColor)
        let darkColorSet = generateDarkThemeColorSet(givenColor: givenColor, closestColor: closestColor)

        return AppThemePallet(light: lightColorSet, dark: darkColorSet)
    }
    
    private static func generateLightThemeColorSet(givenColor: Color, closestColor: KvColor) -> ThemeColorPallet {
        return ThemeColorPallet(
            base: givenColor,
            primary: closestColor.color,
            secondary: generateLightSecondaryColor(primaryColor: closestColor.color),
            tertiary: generateLightTeriaryColor(primaryColor: closestColor),
            background: generateLightBackgroundColor(primaryColor: closestColor),
            onPrimary: Color.white,
            onSecondary: Color.white,
            shadow: Color.gray
        )
    }
    
    private static func generateDarkThemeColorSet(givenColor: Color, closestColor: KvColor) -> ThemeColorPallet {
        return ThemeColorPallet(
            base: givenColor,
            primary: generateDarkPrimaryColor(primaryColor: closestColor.color),
            secondary: generateDarkSecondaryColor(primaryColor: closestColor.color),
            tertiary: generateDarkTeriaryColor(primaryColor: closestColor),
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
