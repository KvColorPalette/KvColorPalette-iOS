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
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_600, color: Color(hex: 0xFFFFB300))
    
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
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.red", bundle: .module))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.rose", bundle: .module))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.purple.light", bundle: .module))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.purple.dark", bundle: .module))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.blue.dark", bundle: .module))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.blue.light", bundle: .module))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.blue.lighter", bundle: .module))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.cyan.light", bundle: .module))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.cyan.dark", bundle: .module))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.green.dark", bundle: .module))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.green.light", bundle: .module))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.green.lighter", bundle: .module))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.yellow", bundle: .module))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.gold", bundle: .module))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_400, color: Color("mat.400.orange", bundle: .module))
    
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
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.red", bundle: .module))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.rose", bundle: .module))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.purple.light", bundle: .module))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.purple.dark", bundle: .module))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.blue.dark", bundle: .module))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.blue.light", bundle: .module))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.blue.lighter", bundle: .module))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.cyan.light", bundle: .module))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.cyan.dark", bundle: .module))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.green.dark", bundle: .module))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.green.light", bundle: .module))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.green.lighter", bundle: .module))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.yellow", bundle: .module))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.gold", bundle: .module))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_300, color: Color("mat.300.orange", bundle: .module))
    
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
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.red", bundle: .module))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.rose", bundle: .module))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.purple.light", bundle: .module))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.purple.dark", bundle: .module))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.blue.dark", bundle: .module))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.blue.light", bundle: .module))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.blue.lighter", bundle: .module))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.cyan.light", bundle: .module))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.cyan.dark", bundle: .module))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.green.dark", bundle: .module))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.green.light", bundle: .module))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.green.lighter", bundle: .module))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.yellow", bundle: .module))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.gold", bundle: .module))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_200, color: Color("mat.200.orange", bundle: .module))
    
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
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.red", bundle: .module))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.rose", bundle: .module))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.purple.light", bundle: .module))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.purple.dark", bundle: .module))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.blue.dark", bundle: .module))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.blue.light", bundle: .module))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.blue.lighter", bundle: .module))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.cyan.light", bundle: .module))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.cyan.dark", bundle: .module))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.green.dark", bundle: .module))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.green.light", bundle: .module))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.green.lighter", bundle: .module))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.yellow", bundle: .module))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.gold", bundle: .module))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_100, color: Color("mat.100.orange", bundle: .module))
    
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
    
    let matRed = KvColor(colorName: "MatRed", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.red", bundle: .module))
    let matRose = KvColor(colorName: "MatRose", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.rose", bundle: .module))
    let matLPurple = KvColor(colorName: "MatLPurple", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.purple.light", bundle: .module))
    let matDPurple = KvColor(colorName: "MatDPurple", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.purple.dark", bundle: .module))
    let matDBlue = KvColor(colorName: "MatDBlue", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.blue.dark", bundle: .module))
    let matLBlue = KvColor(colorName: "MatLBlue", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.blue.light", bundle: .module))
    let matLLBlue = KvColor(colorName: "MatLLBlue", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.blue.lighter", bundle: .module))
    let matLCyan = KvColor(colorName: "MatLCyan", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.cyan.light", bundle: .module))
    let matDCyan = KvColor(colorName: "MatDCyan", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.cyan.dark", bundle: .module))
    let matDGreen = KvColor(colorName: "MatDGreen", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.green.dark", bundle: .module))
    let matLGreen = KvColor(colorName: "MatLGreen", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.green.light", bundle: .module))
    let matLLGreen = KvColor(colorName: "MatLLGreen", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.green.lighter", bundle: .module))
    let matYellow = KvColor(colorName: "MatYellow", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.yellow", bundle: .module))
    let matGold = KvColor(colorName: "MatGold", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.gold", bundle: .module))
    let matOrange = KvColor(colorName: "MatOrange", colorPackage: ColorPackageType.PK_50, color: Color("mat.50.orange", bundle: .module))
    
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
