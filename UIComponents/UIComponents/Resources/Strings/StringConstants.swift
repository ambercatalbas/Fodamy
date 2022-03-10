// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum Strings {

  public enum CommentEditController {
    /// Kaydet
    public static let save = Strings.tr("Modules", "CommentEditController.save")
    /// YORUM DÜZENLE
    public static let title = Strings.tr("Modules", "CommentEditController.title")
  }

  public enum CommentListController {
    /// YORUMLAR
    public static let title = Strings.tr("Modules", "CommentListController.title")
  }

  public enum Favorites {
    /// TÜMÜNÜ GÖR
    public static let seeAllButtonTitle = Strings.tr("Modules", "Favorites.seeAllButtonTitle")
  }

  public enum Home {
    /// EDİTÖR SEÇİMİ
    public static let editorChoiceRecipes = Strings.tr("Modules", "Home.editorChoiceRecipes")
    /// SON EKLENENLER
    public static let lastAddedRecipes = Strings.tr("Modules", "Home.lastAddedRecipes")
    /// %@ Yorum %@ Beğeni
    public static func recipeCommnetAndLikeCount(_ p1: Any, _ p2: Any) -> String {
      return Strings.tr("Modules", "Home.recipeCommnetAndLikeCount", String(describing: p1), String(describing: p2))
    }
    /// %@ Tarif %@ Takipçi
    public static func userRecipeAndFollowerCount(_ p1: Any, _ p2: Any) -> String {
      return Strings.tr("Modules", "Home.userRecipeAndFollowerCount", String(describing: p1), String(describing: p2))
    }
  }

  public enum LoginViewController {
    /// Hesabın mı yok?
    public static let bottomText = Strings.tr("Modules", "LoginViewController.bottomText")
    /// Şifrenizi mi unuttunuz?
    public static let forgotPassword = Strings.tr("Modules", "LoginViewController.forgotPassword")
    /// Giriş Yap
    public static let title = Strings.tr("Modules", "LoginViewController.title")
  }

  public enum PasswordResetController {
    /// Sıfırla
    public static let reset = Strings.tr("Modules", "PasswordResetController.reset")
    /// Şifre Sıfırlama
    public static let title = Strings.tr("Modules", "PasswordResetController.title")
  }

  public enum RecipeDetail {
    /// Henüz yorum yapılmamıştır.
    public static let noComment = Strings.tr("Modules", "RecipeDetail.noComment")
  }

  public enum RegisterViewController {
    /// Hesabın mı var?
    public static let bottomText = Strings.tr("Modules", "RegisterViewController.bottomText")
    /// Üye Ol
    public static let title = Strings.tr("Modules", "RegisterViewController.title")
  }

  public enum SignIn {
    /// Sign In
    public static let navigationTitle = Strings.tr("Modules", "SignIn.navigationTitle")
  }

  public enum WalkThrough {
    /// Fodamy is the best place to find your favorite recipes in all around the world.
    public static let descriptionText = Strings.tr("Modules", "WalkThrough.descriptionText")
    /// Welcome to Fodamy Network!
    public static let firstTitle = Strings.tr("Modules", "WalkThrough.firstTitle")
    /// Share recipes with others.
    public static let fourthTitle = Strings.tr("Modules", "WalkThrough.fourthTitle")
    /// İlerle
    public static let next = Strings.tr("Modules", "WalkThrough.Next")
    /// Finding recipes were not that easy.
    public static let secondTitle = Strings.tr("Modules", "WalkThrough.secondTitle")
    /// Başla!
    public static let start = Strings.tr("Modules", "WalkThrough.Start")
    /// Add new recipe.
    public static let thirdTitle = Strings.tr("Modules", "WalkThrough.thirdTitle")
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
