// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum Strings {

  public enum Error {
    /// Lütfen bilgilerinizi kontrol ediniz.
    public static let checkInformations = Strings.tr("Localizable", "Error.checkInformations")
    /// %@ alanı boş olamaz.
    public static func empty(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Error.empty", String(describing: p1))
    }
    /// Lütfen boş alanları doldurunuz.
    public static let emptyFields = Strings.tr("Localizable", "Error.emptyFields")
    /// Lütfen ekranı yukarıdan aşağıya kaydırarak yenileyiniz.
    public static let refreshFromTop = Strings.tr("Localizable", "Error.refreshFromTop")
  }

  public enum Intro {
    /// Fodamy is the best place to find your favorite recipes in all around the world.
    public static let descriptionText = Strings.tr("Localizable", "Intro.descriptionText")
    /// Welcome to Fodamy Network!
    public static let firstTitle = Strings.tr("Localizable", "Intro.firstTitle")
    /// Share recipes with others.
    public static let fourthTitle = Strings.tr("Localizable", "Intro.fourthTitle")
    /// İlerle
    public static let next = Strings.tr("Localizable", "Intro.Next")
    /// Finding recipes were not that easy.
    public static let secondTitle = Strings.tr("Localizable", "Intro.secondTitle")
    /// Başla!
    public static let start = Strings.tr("Localizable", "Intro.Start")
    /// Add new recipe.
    public static let thirdTitle = Strings.tr("Localizable", "Intro.thirdTitle")
  }

  public enum Key {
    /// Yorum
    public static let comment = Strings.tr("Localizable", "Key.comment")
    /// E-posta
    public static let email = Strings.tr("Localizable", "Key.email")
    /// Username
    public static let username = Strings.tr("Localizable", "Key.username")
  }

  public enum LoginViewController {
    /// Hesabın mı yok?
    public static let bottomBlackText = Strings.tr("Localizable", "LoginViewController.bottomBlackText")
    /// Üye Ol
    public static let bottomRedText = Strings.tr("Localizable", "LoginViewController.bottomRedText")
    /// Şifrenizi mi unuttunuz?
    public static let forgotPassword = Strings.tr("Localizable", "LoginViewController.forgotPassword")
    /// Giriş Yap
    public static let title = Strings.tr("Localizable", "LoginViewController.title")
  }

  public enum PasswordResetController {
    /// Sıfırla
    public static let reset = Strings.tr("Localizable", "PasswordResetController.reset")
    /// Şifre Sıfırlama
    public static let title = Strings.tr("Localizable", "PasswordResetController.title")
  }

  public enum Placeholder {
    /// E-mail Adresi
    public static let email = Strings.tr("Localizable", "Placeholder.email")
    /// Şifre
    public static let password = Strings.tr("Localizable", "Placeholder.password")
    /// Kullanıcı Adı
    public static let username = Strings.tr("Localizable", "Placeholder.username")
  }

  public enum RegisterViewController {
    /// Giriş Yap
    public static let bottomRedText = Strings.tr("Localizable", "RegisterViewController.bottomRedText")
    /// Hesabın mı var?
    public static let bottomText = Strings.tr("Localizable", "RegisterViewController.bottomText")
    /// Üye Ol
    public static let title = Strings.tr("Localizable", "RegisterViewController.title")
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
