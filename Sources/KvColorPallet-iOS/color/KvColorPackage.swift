//
//  KvColorPackage.swift
//  kv-ios-color-pallet
//
//  Created by Kavimal Wijewardana on 12/27/24.
//
import Foundation
import SwiftUICore

public enum ColorPackageType {
    case PK_0, PK_50, PK_100, PK_200, PK_300, PK_400, PK_500, PK_600, PK_700
}

/**
 * Material colors 500
 */
public class MatPackage: ColorPackageBase {
    
    public override init() {}
    
    public let matWhite = KvColor(colorName: "MatWhite", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xAAFFFFFF))
    public let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFFF44336))
    public let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFFE91E63))
    public let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFF9C27B0))
    public let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFF673AB7))
    public let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFF3F51B5))
    public let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFF2196F3))
    public let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFF03A9F4))
    public let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFF00BCD4))
    public let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFF009688))
    public let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFF4CAF50))
    public let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFF8BC34A))
    public let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFFCDDC39))
    public let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFFFFEB3B))
    public let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFFFFC107))
    public let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xFFFF9800))
    public let matBlack = KvColor(colorName: "MatWhite", colorPackage: ColorPackageType.PK_500, color: Color(hex: 0xAA000000))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 700
 * This is for internal usage only.
 */
class Mat700Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFFD32F2F))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFFC2185B))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFF7B1FA2))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFF512DA8))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFF303F9F))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFF1976D2))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFF0288D1))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFF0097A7))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFF00796B))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFF388E3C))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFF689F38))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFFAFB42B))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFFFBC02D))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFFFFA000))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_700, color: Color(hex: 0xFFF57C00))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 600
 * This is for internal usage only.
 */
class Mat600Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFFE53935))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFFD81B60))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFF8E24AA))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFF5E35B1))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFF3949AB))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFF1E88E5))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFF039BE5))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFF00ACC1))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFF00897B))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFF43A047))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFF7CB342))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFFC0CA33))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFFFDD835))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFFFFB300))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFFFB8C00))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 400
 * This is for internal usage only.
 */
class Mat400Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFFEF5350))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFFEC407A))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFFAB47BC))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFF7E57C2))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFF5C6BC0))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFF42A5F5))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFF29B6F6))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFF26C6DA))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFF26A69A))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFF66BB6A))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFF9CCC65))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFFD4E157))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFFFFEE58))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFFFFCA28))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_400, color: Color(hex: 0xFFFFA726))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 300
 * This is for internal usage only.
 */
class Mat300Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFFE57373))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFFF06292))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFFBA68C8))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFF9575CD))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFF7986CB))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFF64B5F6))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFF4FC3F7))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFF4DD0E1))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFF4DB6AC))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFF81C784))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFFAED581))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFFDCE775))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFFFFF176))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFFFFD54F))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_300, color: Color(hex: 0xFFFFB74D))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 200
 * This is for internal usage only.
 */
class Mat200Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFFEF9A9A))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFFF48FB1))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFFCE93D8))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFFB39DDB))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFF9FA8DA))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFF90CAF9))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFF81D4FA))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFF80DEEA))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFF80CBC4))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFFA5D6A7))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFFC5E1A5))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFFE6EE9C))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFFFFF59D))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFFFFE082))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_200, color: Color(hex: 0xFFFFCC80))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 100
 * This is for internal usage only.
 */
class Mat100Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFFFCDD2))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFF8BBD0))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFE1BEE7))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFD1C4E9))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFC5CAE9))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFBBDEFB))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFB3E5FC))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFB2EBF2))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFB2DFDB))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFC8E6C9))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFDCEDC8))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFF0F4C3))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFFFF9C4))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFFFECB3))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_100, color: Color(hex: 0xFFFFE0B2))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}

/**
 * Material colors 50
 * This is for internal usage only.
 */
class Mat50Package: ColorPackageBase {
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFFFEBEE))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFFCE4EC))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFF3E5F5))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFEDE7F6))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFE8EAF6))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFE3F2FD))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFE1F5FE))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFE0F7FA))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFE0F2F1))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFE8F5E9))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFF1F8E9))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFF9FBE7))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFFFFDE7))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFFFF8E1))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_50, color: Color(hex: 0xFFFFF3E0))
    
    public override func getColorList() -> [KvColor] {
        return [
            matRed,
            matRose,
            matLPurple,
            matDPurple,
            matDBlue,
            matLBlue,
            matLLBlue,
            matLCyan,
            matDCyan,
            matDGreen,
            matLGreen,
            matLLGreen,
            matYellow,
            matGold,
            matOrange,
        ]
    }
}
