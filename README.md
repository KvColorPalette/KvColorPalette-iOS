# KvColorPalette - iOS

This is a lightweight iOS package library that generates a color palette from a given color and creates a theme color set for iOS applications. 
This library simplifies the process of building consistent and visually appealing color themes.

# Features
* Generate a color palette based on a single input color. Using color alpha/mat-colors
* Create a complete theme color set, including primary, secondary, background, and surface colors.
* Support for Material Design color guidelines.
* Easy integration with Android projects.

# Reference App
To show case all features and functionalities of this library, there is a reference app we build. Application is already available in Apple AppStore. Reference app code is available in GitHub.
|Title                  |Link                                                               |
|-----------------------|-------------------------------------------------------------------|
|Apple AppStore         |https://apps.apple.com/us/app/kvcolorpalette/id6745904568          |
|GitHub Code Reference  |https://github.com/KvColorPalette/KvColorPalette-iOS-App           |

# Installation

### In your project:
1. After open this project from XCode, then click on following `File -> Add Package Dependencies...`
2. This will open up a window to search packages.
3. On the search field, search with following URL `https://github.com/KvColorPalette/KvColorPalette-iOS`

### In your Swift Package:
1. Open your swift-package `Package` file.
2. Add following inside `dependencies`
```
dependencies: [
    ....
    .package(url: "https://github.com/KvColorPalette/KvColorPalette-iOS", from: "2.0.0"),
]
```

3. Then, under the `target` specify the package as follows
```
targets: [
    target(
        name: "your-package-name"
        dependencies: [
            ....
            .product(name: "KvColorPalette-iOS", package: "KvColorPalette-iOS"),
        ]
    )
]
```

# Usage
After you integrated the `KvColorPalette-iOS` package, you can consume it as follows.

### Basic Usage
If you wants to consume basic features in `KvColorPalette-iOS` then use singleton instance as follows. This singleton instance allows consumers to access following basic functionalities.
```
// Generate mat color schem of given color
KvColorPalette.instance.generateColorPalette(givenColor: MatPackage().matGold)

// Generate alpha color schem of given color
KvColorPalette.instance.generateAlphaColorPalette(givenColor: MatPackage().matGold.color, colorCount: 8)

// Generate brigtness (lightness) color schem of given color
KvColorPalette.instance.generateBrightnessColorPalette(givenColor: MatPackage().matGold.color, colorCount: 12)

// Generate saturation color schem of given color
KvColorPalette.instance.generateSaturationColorPalette(givenColor: MatPackage().matGold.color, colorCount: 15)

// Generate theme color pallet of given color
KvColorPalette.instance.generateThemeColorPalette(givenColor: MatPackage().matGold)
```

### Advance Usage
If you wants to use `KvColorPalette-iOS` to generate your theme color pallet when your application start-up, then you have to initiate the library in AppDelegate level. 
To initiate you have to pass one base color that you think your application will use. Use following code to initiate the library package.
```
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Initiate the KvColorPalette - (Assume your application's basic collor is Color.blue)
    KvColorPalette.initialize(basicColor: .blue)
    return true
}
```
After initiate the swift package as above, you can access generate theme from anywhere in your application as extension in `Color` object in SwiftUI.
```
Color.themePalette // This returns the generate theme color pallet.
```
In this `Color.themePalette` you will have following color attributes.
|Attribute    |light-theme |dark-theme  |Description   |
|-------------|------------|------------|--------------|
|.base        |original    |original    |This is the base color given by the user.   |
|.primary     |available   |available   |Suggesting primary color. This color can use for buttons, major component etc.   |
|.secondary   |available   |available   |Suggesting secondary color. For any the secondary components which should not use by primary color.   |
|.tertiary    |available   |available   |Suggesting tertiary color.   |
|.quaternary  |available   |available   |Suggesting quaternary color.   |
|.background  |available   |available   |Suggesting background color.   |
|.onPrimary   |available   |available   |This is the color you can use on any component use primary color.   |
|.onSecondary |available   |available   |This is the color you can use on any component use secondary color.   |
|.shadow      |available   |available   |This is the color for your shadows.   |

#### Note:
To use above `Color.themePalette`, initialization of the library is mandatory item. Because even without initialization, you will see `Color.themePalette` attribute in your application, but all the colors it returns will be `.clear` color.
Therefore, make sure to initiate the library.


# Contribution
We welcome contributions! Please fork the repository, make your changes, and submit a pull request. Ensure your code adheres to the established guidelines.

# License
`KvColorPalette-iOS` is licensed under the [MIT License](https://github.com/KvColorPalette/KvColorPalette-iOS/blob/main/LICENSE).

# Feedback
For questions, suggestions, or issues, please open an issue on GitHub or contact us at kavimalw@gmail.com.


