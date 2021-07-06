# ReusableUIComponents

A description of this package.

## Fonts usage:

### SetUp:
### Create an enum for the fonts that are being used and set the font file name without extension on the respective property of the font

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

### Use case:
### Where a font is required, just use .font(UsedFonts.fontName , weight: .weight, size: fontSize)

*Example:*

    label.font = .font(UsedFonts.monserrat , weight: .bold, size: 15)
