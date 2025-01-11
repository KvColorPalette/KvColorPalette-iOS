// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import UIKit
import SwiftUICore

/**
 * This is the KvColorPallet-iOS library.
 */
public class KvColorPallet {
    
    nonisolated(unsafe) public static var instance: KvColorPallet = KvColorPallet()
    nonisolated(unsafe) public static var appThemePallet: AppThemePallet? = nil
    
    /**
     * This is a basic initialization without a basic color.  When consumer use this initialization, in default KvColorPallet with not
     * provide a theme color pallet. Consumer can generate their own by invoking `#generateThemeColorPallet(givenColor: KvColor)` method
     * in the package.
     */
    public init () {}
    
    /**
     * KvColorPallet initialization. Consumer can use this to initialize the KvColorPallet from their application delegate if they need a
     * Theme color pallet at the application start-up.
     *
     * On this initiation of kv-color-pallet, we generate a theme color pallet using the given color.
     * `basicColor` is mandatory parameter while initiate the library.
     */
    public static func initialize(basicColor: KvColor) {
        let closestColor = ColorUtil.findClosestColor(givenColor: basicColor.color)
        appThemePallet = instance.generateThemeColorPallet(givenColor: closestColor.color)
    }
    
    /**
     * Generate a list of colors with pre-defined color packages. According to the feeding color,
     * this method generate a list of colors.
     *
     * @param givenColor The color to generate the color packages for.
     * @return A list of colors.
     */
    public func generateColorPallet(givenColor: KvColor, alphaChange: Double = 1) -> [Color] {
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
    
    /**
     * Generate a list of colors with alpha values. According to the feeding color,
     * this method generate a list of colors with different alpha values.
     *
     * @param givenColor The color to generate the alpha values for.
     * @return A list of colors with alpha values.
     */
    public func generateAlphaColorPallet(givenColor: Color) -> [Color] {
        return [
            givenColor.opacity(1),
            givenColor.opacity(0.9),
            givenColor.opacity(0.8),
            givenColor.opacity(0.7),
            givenColor.opacity(0.6),
            givenColor.opacity(0.5),
            givenColor.opacity(0.4),
            givenColor.opacity(0.3),
            givenColor.opacity(0.2),
            givenColor.opacity(0.1),
        ]
    }
    
    /**
     * Generate a list of colors with brightness property change in given color. According to the feeding color,
     * this method generate a list of colors with different brightnesses.
     *
     * @param givenColor The color to generate the brightness values for.
     * @return A list of colors.
     */
    public func generateBrightnessColorPallet(givenColor: Color) -> [Color] {
        let hue = givenColor.hsl.hue
        let saturation = givenColor.hsl.saturation
        
        return [
            Color(hue: hue, saturation: saturation, brightness: 1),
            Color(hue: hue, saturation: saturation, brightness: 0.9),
            Color(hue: hue, saturation: saturation, brightness: 0.8),
            Color(hue: hue, saturation: saturation, brightness: 0.7),
            Color(hue: hue, saturation: saturation, brightness: 0.6),
            Color(hue: hue, saturation: saturation, brightness: 0.5),
            Color(hue: hue, saturation: saturation, brightness: 0.4),
            Color(hue: hue, saturation: saturation, brightness: 0.3),
            Color(hue: hue, saturation: saturation, brightness: 0.2),
            Color(hue: hue, saturation: saturation, brightness: 0.1),
        ]
    }
    
    /**
     * Generate a list of colors with saturation property change in given color. According to the feeding color,
     * this method generate a list of colors with different saturations.
     *
     * @param givenColor The color to generate the saturation values for.
     * @return A list of colors.
     */
    public func generateSaturationColorPallet(givenColor: Color) -> [Color] {
        let hue = givenColor.hsl.hue
        let brightness = givenColor.hsl.brightness
        
        return [
            Color(hue: hue, saturation: 1, brightness: brightness),
            Color(hue: hue, saturation: 0.9, brightness: brightness),
            Color(hue: hue, saturation: 0.8, brightness: brightness),
            Color(hue: hue, saturation: 0.7, brightness: brightness),
            Color(hue: hue, saturation: 0.6, brightness: brightness),
            Color(hue: hue, saturation: 0.5, brightness: brightness),
            Color(hue: hue, saturation: 0.4, brightness: brightness),
            Color(hue: hue, saturation: 0.3, brightness: brightness),
            Color(hue: hue, saturation: 0.2, brightness: brightness),
            Color(hue: hue, saturation: 0.1, brightness: brightness),
        ]
    }
    
    /**
     * Generate a theme color pallet. According to the feeding color,
     * this method generate a theme color pallet.
     *
     * @param givenColor The color to generate the theme color pallet for.
     * @return A theme color pallet.
     */
    public func generateThemeColorPallet(givenColor: Color) -> AppThemePallet {
        return ThemeGenUtil.generateThemeColorSet(givenColor: givenColor)
    }
}
