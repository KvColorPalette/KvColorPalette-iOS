// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import UIKit
import SwiftUICore


///
/// This is the KvColorPalette-iOS library.
///
public class KvColorPalette {
    
    nonisolated(unsafe) public static var instance: KvColorPalette = KvColorPalette()
    nonisolated(unsafe) public static var appThemePalette: AppThemePalette? = nil
    
    ///
    /// This is a basic initialization without a basic color.  When consumer use this initialization, in default KvColorPalette with not
    /// provide a theme color pallet. Consumer can generate their own by invoking `#generateThemeColorPalette(givenColor: KvColor)` method
    /// in the package.
    ///
    public init () {}
    
    
    ///
    /// KvColorPalette initialization. Consumer can use this to initialize the KvColorPalette from their application delegate if they need a
    /// Theme color pallet at the application start-up.
    ///
    /// On this initiation of kv-color-pallet, we generate a theme color pallet using the given color.
    /// `basicColor` is mandatory parameter while initiate the library.
    ///
    /// - Parameters:
    ///  - basicColor: Color: Given color for generate theme palette.
    ///
    public static func initialize(basicColor: Color) {
        appThemePalette = instance.generateThemeColorPalette(givenColor: basicColor)
    }
    
    ///
    /// KvColorPalette initialization. Consumer can use this to initialize the KvColorPalette from their application, if they need a Theme color palette at the application start-up.
    ///
    /// On this initiation of KvColorPalette, library generate a theme color palette using the given base color and second color.
    /// `baseColor` and `secondColor` are mandatory parameter while initiate the library. Other two parameters are optional.
    ///
    /// - Parameters:
    ///   - baseColor: Color: Given first for generate theme palette.
    ///   - secondColor: Color: Given second color for generate theme palette.
    ///   - bias: Float: The bias value to blend the two colors. In default that is 0.5f. This accept float value in a range of 0.0 - 1.0.
    ///   - themeGenMode: ThemeGenPattern: The pattern to generate the theme color palette. Default is [ThemeGenMode.SEQUENCE] and available options are [ThemeGenMode.SEQUENCE] and [ThemeGenMode.BLEND]
    ///    - [ThemeGenMode.SEQUENCE] will add base color & primary & second color as secondary, rest of the colors will generate by using given base color.
    ///    - [ThemeGenMode.BLEND] will add base color & primary & second color as primary, rest of the colors will generate by after generating new color blend first and second colors.
    ///
    public static func initialize(baseColor: Color, secondColor: Color, themeGenMode: ThemeGenMode = ThemeGenMode.SEQUENCE, bias: Float = 0.5) {
        appThemePalette = instance.generateMultiColorThemeColorSchemePalette(givenColor: baseColor, secondColor: secondColor, themeGenMode: themeGenMode, bias: bias)
    }
        
    ///
    /// Generate a list of colors with pre-defined color packages. According to the feeding color,
    /// this method generate a list of colors.
    ///
    /// - Parameters:
    ///  - givenColor: The color to generate the color packages for.
    ///
    /// - Returns: A list of colors.
    ///
    public func generateColorPalette(givenColor: KvColor, alphaChange: Double = 1) -> [Color] {
        return [
            Mat900Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat800Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat700Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat600Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            MatPackage().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat400Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat300Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat200Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat100Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat50Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color
        ]
    }
        
    ///
    /// Generate a list of colors with alpha values. According to the feeding color,
    /// this method generate a list of colors with different alpha values.
    ///
    /// - Parameters:
    ///  - givenColor: The color to generate the alpha values for.
    ///  - colorCount: The number of colors to generate. In default that returns 10 colors. This accept integer value in a range of 2 - 30. Even someone passes number more than 30, this will returns only 30 colors.
    ///
    /// - Returns: A list of colors with alpha values.
    ///
    public func generateAlphaColorPalette(givenColor: Color, colorCount: Int = 10) -> [Color] {
        var colorList: [Color] = []
        let reviceColorCount = ColorUtil.validateAndReviseColorCount(colorCount: colorCount)
        
        for i in stride(from: reviceColorCount, to: 0, by: -1) {
            let colorAlpha = 1.0/Double(reviceColorCount)*Double(i)
            colorList.append(givenColor.opacity(colorAlpha))
        }
        
        return colorList
    }
    
    ///
    /// Generate a list of colors with brightness property change in given color. According to the feeding color,
    /// this method generate a list of colors with different brightnesses.
    ///
    /// - Parameters:
    ///  - givenColor: The color to generate the brightness values for.
    ///  - colorCount: The number of colors to generate. In default that returns 10 colors. This accept integer value in a range of 2 - 30. Even someone passes number more than 30, this will returns only 30 colors.
    ///
    /// - Returns:  A list of colors.
    ///
    public func generateBrightnessColorPalette(givenColor: Color, colorCount: Int = 10) -> [Color] {
        let hue = givenColor.hsl.hue
        let saturation = givenColor.hsl.saturation
        
        var colorList: [Color] = []
        let reviceColorCount = ColorUtil.validateAndReviseColorCount(colorCount: colorCount)
        
        for i in stride(from: reviceColorCount, to: 0, by: -1) {
            let colorBrightness = 1.0/Double(reviceColorCount)*Double(i)
            colorList.append(Color(hue: hue, saturation: saturation, brightness: colorBrightness))
        }
        
        return colorList
    }
    
    ///
    /// Generate a list of colors with saturation property change in given color. According to the feeding color,
    /// this method generate a list of colors with different saturations.
    ///
    /// - Parameters:
    ///  - givenColor: The color to generate the saturation values for.
    ///  - colorCount: The number of colors to generate. In default that returns 10 colors. This accept integer value in a range of 2 - 30. Even someone passes number more than 30, this will returns only 30 colors.
    ///
    /// - Returns: A list of colors.
    ///
    public func generateSaturationColorPalette(givenColor: Color, colorCount: Int = 10) -> [Color] {
        let hue = givenColor.hsl.hue
        let brightness = givenColor.hsl.brightness
        
        var colorList: [Color] = []
        let reviceColorCount = ColorUtil.validateAndReviseColorCount(colorCount: colorCount)
        
        for i in stride(from: reviceColorCount, to: 0, by: -1) {
            let colorSaturation = 1.0/Double(reviceColorCount)*Double(i)
            colorList.append(Color(hue: hue, saturation: colorSaturation, brightness: brightness))
        }
        
        return colorList
    }
    
    ///
    /// Generate a theme color pallet. According to the feeding color,
    /// this method generate a theme color pallet.
    ///
    /// - Parameters:
    ///  - givenColor: The color to generate the theme color pallet for.
    ///
    /// - Returns:  A theme color pallet.
    ///
    public func generateThemeColorPalette(givenColor: Color) -> AppThemePalette {
        return ThemeGenUtil.generateThemeColorSet(givenColor: givenColor)
    }
    
    ///
    /// Generate a theme color palette. According to the feeding color, this method generate a color scheme theme color palette.
    ///
    /// 
    public func generateMultiColorThemeColorSchemePalette(givenColor: Color, secondColor: Color,
                                                          themeGenMode: ThemeGenMode = ThemeGenMode.SEQUENCE, bias: Float = 0.5) -> AppThemePalette {
        return ThemeGenUtil.generateMultiColorInputThemeColorScheme(givenColor: givenColor, secondColor: secondColor, bias: bias, themeGenMode: themeGenMode)
    }
    
    ///
    /// This method finds the closest KvColor available in the `KvColorPalette-iOS` to the given color
    ///
    /// - Parameters:
    ///  - givenColor: The color to find closest KvColor from color packages
    ///
    /// - Returns: `KvColor`
    /// 
    public func findClosestKvColor(givenColor: Color) -> KvColor {
        return ColorUtil.findClosestColor(givenColor: givenColor)
    }
}
