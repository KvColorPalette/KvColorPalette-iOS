// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import SwiftUICore

/**
 * This is the kv-color-pallet android library.
 */
public class KvColorPallet {
    
    nonisolated(unsafe) public static var instance: KvColorPallet = KvColorPallet()
    public var appThemePallet: AppThemePallet? = nil
    
    /**
     * This is a basic initialization without a basic color.  When consumer use this initialization, in default KvColorPallet with not
     * provide a theme color pallet. Consumer can generate their own by invoking `#generateThemeColorPallet(givenColor: KvColor)` method
     * in the package.
     */
    public init () {}
    
    /**
     * On this initiation of kv-color-pallet, we generate a theme color pallet using the given color.
     * `basicColor` is mandatory parameter while initiate the library.
     *
     * Consumer who is using kv-color-pallet, will get a color pallet for the theme of the application
     */
    public init(basicColor: Color) {
        let closestColor = ColorUtil.findClosestColor(givenColor: basicColor)
        self.appThemePallet = self.generateThemeColorPallet(givenColor: closestColor)
    }
    
    /**
     * KvColorPallet initialization. Consumer can use this to initialize the KvColorPallet from their application delegate if they need a
     * Theme color pallet at the application start-up.
     */
    public static func initialize(basicColor: Color) {
        if instance == nil {
            instance = KvColorPallet(basicColor: basicColor)
        }
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
     * Generate a list of colors with pre-defined color packages. According to the feeding color,
     * this method generate a list of colors.
     *
     * @param givenColor The color to generate the color packages for.
     * @return A list of colors.
     */
    public func generateColorPallet(givenColor: KvColor, alphaChange: Double = 1) -> [Color] {
        return [
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
     * Generate a theme color pallet. According to the feeding color,
     * this method generate a theme color pallet.
     *
     * @param givenColor The color to generate the theme color pallet for.
     * @return A theme color pallet.
     */
    public func generateThemeColorPallet(givenColor: KvColor) -> AppThemePallet {
        return ThemeGenUtil.generateThemeColorSet(givenColor: givenColor)
    }
}
