# ReusableUIComponents

A description of this package.

## Fonts usage:

### SetUp:
### 1. Create an enum which confirms to Fonts for the fonts that are being used and set the font file name without extension on the respective property of the font

*Example:*

    enum UsedFonts: Fonts {

        /// fonts
        case monserrat
        
        var bold: String {
            switch self {
            case .monserrat:
                return "Montserrat-Bold"
            }
        }
        
        var semibold: String {
            switch self {
            case .monserrat:
                return "Montserrat-SemiBold"
            }
        }
        
        var regular: String {
            switch self {
            case .monserrat:
                return "Montserrat-Regular"
            }
        }
        
        var medium: String {
            switch self {
            case .monserrat:
                return "Montserrat-Medium"
            }
        }
    }
    
### 2. Create an enum for the fontsizes that confirms to FontSizes that are being used

    *Example:*

    enum UsedFontsSizes: FontSizes {

        /// fontsizes
        case extraSmall, small, medium, large, extraLarge
        
        var size: CGFloat {
            switch self {
            case .extraSmall:
                return 12
            case .small:
                return 14
            case .medium:
                return 16
            case .large:
                return 20
            case .extraLarge:
                return 30
            }
        }
    }

### Use case:
### Where a font is required, just use .font(UsedFonts.fontName , weight: .weight, size: UsedFontsSizes.size)

*Example:*

    label.font = .font(UsedFonts.monserrat , weight: .bold, size: UsedFontsSizes.medium)
