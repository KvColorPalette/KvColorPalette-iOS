//
//  ColorUtil.swift
//  KvColorPalette-iOS
//
//  Created by Kavimal Wijewardana on 12/27/24.
//
import Foundation
import SwiftUICore

public class ColorUtil {
    
    ///
    /// Validate if given color hex is valid
    ///
    /// - Parameters:
    ///  - colorHex: Hex string value of a color
    ///
    /// - Returns: Boolean value for the given color hex is valid color or not.
    ///
    public static func validateColorHex(colorHex: String) -> Bool {
        let colorHexRegex = "^#([A-Fa-f0-9]{6})$"
        return colorHex.range(of: colorHexRegex, options: .regularExpression) != nil
    }
    
    ///
    /// Convert given hex to `Color`
    ///
    /// - Parameters:
    ///  - colorHex: Hex int value of a color.
    ///
    /// - Returns: `Color` object for the given color Hex
    ///
    public static func getColorFromHexUInt(colorHex: UInt) -> Color {
        return Color(hex: colorHex)
    }
    
    ///
    /// Convert given hex to `Color`
    ///
    /// - Parameters:
    ///  - colorHex: Hex string value of a color.
    ///
    /// - Returns: `Color` object for the given color Hex. - Nullable
    ///
    public static func getColorFromHexString(colorHex: String) -> Color? {
        if validateColorHex(colorHex: colorHex) {
            return Color(hex: colorHex)
        } else {
            return nil
        }
    }
    
    ///
    /// Get hex value of given color
    ///
    /// - Parameters:
    ///  - color: Color for get the Hex
    ///
    /// - Returns: Hex string for given color
    ///
    public static func getHex(color: Color) -> String {
        return color.hex
    }
    
    ///
    /// Get hex value of given color with alpha
    ///
    /// - Parameters:
    ///  - color: Color for get the Hex with Alpha
    ///
    /// - Returns: Hex string for the given color
    ///
    public static func getHexWithAlpha(color: Color) -> String {
        return color.hexWithAlpha
    }
    
    ///
    /// Get distance between two colors
    ///
    /// - Parameters:
    ///  - colorOne: First color to check the distance.
    ///  - colorTwo: Second color to check the distance with first color
    ///
    /// - Returns: Distance between given two colors.
    ///
    public static func getColorDistace(colorOne: Color, colorTwo: Color) -> Float {
        let redDistance = abs(colorOne.rgb.red - colorTwo.rgb.red)
        let greenDistance = abs(colorOne.rgb.green - colorTwo.rgb.green)
        let blueDistance = abs(colorOne.rgb.blue - colorTwo.rgb.blue)
        let opacityDistance = abs(colorOne.rgb.opacity - colorTwo.rgb.opacity)
        
        let sum = redDistance + greenDistance + blueDistance + opacityDistance
        
        return Float(sum)
    }
    
    ///
    /// This method is to blend given two colors and return new color
    ///
    /// - Parameters:
    ///   - firstColor: Given first color to blend.
    ///   - secondColor: Given second color to blend.
    ///   - bias: Bias to the new color for first / second color.
    ///
    /// - Returns: Returning a `Color` object of blended given two colors.
    ///
    public static func blendColors(firstColor: Color, secondColor: Color, bias: Float = 0.5) -> Color {
        let blendRed = colorBlendingComponent(firstColor: firstColor.rgb.red, secondColor: secondColor.rgb.red, bias: bias)
        let blendGreen = colorBlendingComponent(firstColor: firstColor.rgb.green, secondColor: secondColor.rgb.green, bias: bias)
        let blendBlue = colorBlendingComponent(firstColor: firstColor.rgb.blue, secondColor: secondColor.rgb.blue, bias: bias)
        
        let newColor = Color(red: CGFloat(blendRed), green: CGFloat(blendGreen), blue: CGFloat(blendBlue), opacity: 1)
        
        return Color(red: CGFloat(blendRed), green: CGFloat(blendGreen), blue: CGFloat(blendBlue), opacity: 1)
    }
    
    ///
    /// Get closest color to the given color from available color packages.
    /// This compares the available colors and find out the closest `KvColor` to the given color.
    ///
    /// - Parameters:
    ///  - givenColor: Provided color to get closest `KvColor`
    ///
    /// - Returns: Closest `KvColor` to the given color.
    ///
    public static func findClosestColor(givenColor: Color) -> KvColor {
        // Do comparison with 700 color list
        let colorMatch700 = Mat700Package().compareColor(givenColor: givenColor)
        if colorMatch700.isExactMatch {
            return colorMatch700.matchedColor
        } else {
            var shortestDistance = colorMatch700.colorDistance
            var closestColor = colorMatch700.matchedColor
            
            // Do comparison with 500(base) color list
            let colorMatch500 = MatPackage().compareColor(givenColor: givenColor)
            if colorMatch500.isExactMatch {
                return colorMatch500.matchedColor
            } else {
                if colorMatch500.colorDistance < shortestDistance {
                    shortestDistance = colorMatch500.colorDistance
                    closestColor = colorMatch500.matchedColor
                    
                    // Do comparison with 300 color list
                    let colorMatch300 = Mat300Package().compareColor(givenColor: givenColor)
                    if colorMatch300.isExactMatch {
                        return colorMatch300.matchedColor
                    } else {
                        if colorMatch300.colorDistance < shortestDistance {
                            shortestDistance = colorMatch300.colorDistance
                            closestColor = colorMatch300.matchedColor
                            
                            // Do comparison with 200 color list
                            let colorMatch200 = Mat200Package().compareColor(givenColor: givenColor)
                            if colorMatch200.isExactMatch {
                                return colorMatch200.matchedColor
                            } else {
                                if colorMatch200.colorDistance < shortestDistance {
                                    closestColor = colorMatch200.matchedColor
                                }
                            }
                        }
                    }
                }
            }
            
            return closestColor
        }
    }
    
    ///
    /// Validate the color count requested by the user in the color palette.
    ///
    /// - Parameters:
    ///  - colorCount: The number of colors to generate.
    ///
    /// - Returns:The validated color count.
    ///
    internal static func validateAndReviseColorCount(colorCount: Int) -> Int {
        return if colorCount >= 30 { 30 } else if colorCount <= 1 { 1 } else { colorCount }
    }
    
    ///
    /// This method can return the color value of red/green/blue according to the blending bias with given first color's red/green/blue value and second color's red/green/blue value.
    ///
    /// - Parameters:
    ///  - firstColor: The first color's red or green or blue component value
    ///  - secondColor: The second color's red or green or blue component value
    ///  - bias: The blending bias value
    ///
    /// - Returns: New blend color's red or green or blue color component value
    /// 
    private static func colorBlendingComponent(firstColor: CGFloat, secondColor: CGFloat, bias: Float) -> CGFloat {
        let difference = abs(firstColor - secondColor)
        let blending = difference * CGFloat(bias) // How bias to the blending colors, first or second
        
        if firstColor < secondColor {
            return (firstColor) + blending // First color is in lower end, therefore adding bias
        } else if firstColor > secondColor {
            return (firstColor) - blending // First color is in higher end, therefore subtracting bias
        } else {
            return (firstColor) // This means, first component and second component are same. Therefore, returns same value.
        }
    }
}
