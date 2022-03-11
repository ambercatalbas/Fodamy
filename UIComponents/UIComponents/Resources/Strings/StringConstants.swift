// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum Strings {

  public enum Intro {
    /// Fodamy is the best place to find your favorite recipes in all around the world.
    public static let descriptionText = Strings.tr("Modules", "Intro.descriptionText")
    /// Welcome to Fodamy Network!
    public static let firstTitle = Strings.tr("Modules", "Intro.firstTitle")
    /// Share recipes with others.
    public static let fourthTitle = Strings.tr("Modules", "Intro.fourthTitle")
    /// İlerle
    public static let next = Strings.tr("Modules", "Intro.Next")
    /// Finding recipes were not that easy.
    public static let secondTitle = Strings.tr("Modules", "Intro.secondTitle")
    /// Başla!
    public static let start = Strings.tr("Modules", "Intro.Start")
    /// Add new recipe.
    public static let thirdTitle = Strings.tr("Modules", "Intro.thirdTitle")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Strings {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
