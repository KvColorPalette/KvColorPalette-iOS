# KV iOS Color Pallet

This is a lightweight iOS package library that generates a color palette from a given color and creates a theme color set for iOS applications. 
This library simplifies the process of building consistent and visually appealing color themes.

# Features
* Generate a color palette based on a single input color. Using color alpha/mat-colors
* Create a complete theme color set, including primary, secondary, background, and surface colors.
* Support for Material Design color guidelines.
* Easy integration with Android projects.

# Installation

### In your project:
1. After open this project from XCode, then click on following `File -> Add Package Dependencies...`
2. This will open up a window to search packages.
3. On the search field, search with following URL `https://github.com/KvColorPallet/KvColorPallet-iOS`

### In your Swift Package:
1. Open your swift-package `Package` file.
2. Add following inside `dependencies`
```
dependencies: [
    ....
    .package(url: "https://github.com/KvColorPallet/KvColorPallet-iOS", from: "0.0.3"),
]
```

3. Then, under the `target` specify the package as follows
```
targets: [
    target(
        name: "your-package-name"
        dependencies: [
            ....
            .product(name: "KvColorPallet-iOS", package: "KvColorPallet-iOS"),
        ]
    )
]
```

# Usage
After you integrated the `KvColorPallet-iOS` package, you can consume it as follows.
If you wants to use this to generate your theme color pallet when your application start-up, then you can initiate the library in AppDelegate level.
```
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Initiate the KvColorPallet - (Assume your application's basic collor is Color.red)
    KvColorPallet.initialize(basicColor: .red)
    return true
}
```
After initiate the swift package as above, you can access generate theme from anywhere in your application as follows
```
KvColorPallet.appThemePallet // This returns the generate theme color pallet using .red color.
```

If you wants to consume all the other features in `KvColorPallet` then use singleton instance as follows
```
// Generate alpha color schem of given color
KvColorPallet.instance.generateAlphaColorPallet(givenColor: MatPackage().matGold.color)

// Generate mat color schem of given color
KvColorPallet.instance.generateColorPallet(givenColor: MatPackage().matGold)

// Generate theme color pallet of given color
KvColorPallet.instance.generateThemeColorPallet(givenColor: MatPackage().matGold)
```

# Contribution
We welcome contributions! Please fork the repository, make your changes, and submit a pull request. Ensure your code adheres to the established guidelines.

# License
kv-ios-color-pallet is licensed under the [MIT License](https://github.com/KvColorPallet/KvColorPallet-iOS/blob/main/LICENSE).

# Feedback
For questions, suggestions, or issues, please open an issue on GitHub or contact us at kavimalw@gmail.com.


