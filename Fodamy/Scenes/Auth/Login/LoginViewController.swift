//
//  LoginViewController.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 10.03.2022.
//

import UIKit
import MobilliumBuilders

final class LoginViewController: BaseViewController<LoginViewModel> {
    
    private let titleLabel = UILabelBuilder()
        .textColor(.appCinder)
        .font(.font(.nunitoBold, size: .xxLarge))
        .build()
    private let verticalStackView = UIStackViewBuilder()
        .axis(.vertical)
        .spacing(15)
        .build()
    private let usernameTextField = FloatLabelTextField()
    private let passwordTextField = FloatLabelTextField()
    private let loginButton = ButtonFactory.createPrimaryButton(style: .large)
    private let bottomStackView = UIStackViewBuilder()
        .axis(.horizontal)
        .spacing(4)
        .build()
    private let bottomLabel = UILabelBuilder()
            .font(.font(.nunitoBold, size: .xLarge))
            .textColor(.appRaven)
            .build()
    private let registerScreenButton = UIButtonBuilder()
            .titleColor(.appRed)
            .titleFont(.font(.nunitoBold, size: .xLarge))
            .build()
    private let forgotPasswordButton = UIButtonBuilder()
        .titleFont(.font(.nunitoSemiBold, size: .large))
        .titleColor(.appRaven)
        .build()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        configureContents()
        setLocalize()
    }
}

// MARK: - UILayout
extension LoginViewController {
    
    private func addSubViews() {
        addTitleLabel()
        addStackView()
        addBottomStackView()
        addForgotPasswordButton()
        
    }
    
    private func addTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.topToSuperview(usingSafeArea: true).constant = 50
        titleLabel.centerXToSuperview()
    }
    
    private func addStackView() {
        view.addSubview(verticalStackView)
        verticalStackView.topToBottom(of: titleLabel).constant = 50
        verticalStackView.leadingToSuperview().constant = 15
        verticalStackView.trailingToSuperview().constant = -15
        verticalStackView.addArrangedSubview(usernameTextField)
        verticalStackView.addArrangedSubview(passwordTextField)
        verticalStackView.addArrangedSubview(loginButton)

    }
    
    private func addBottomStackView() {
        view.addSubview(bottomStackView)
        bottomStackView.leadingToSuperview(relation: .equalOrGreater).constant = 20
        bottomStackView.trailingToSuperview(relation: .equalOrLess).constant = -20
        bottomStackView.bottomToSuperview(usingSafeArea: true)
        bottomStackView.centerXToSuperview()
        bottomStackView.addArrangedSubview(bottomLabel)
        bottomStackView.addArrangedSubview(registerScreenButton)
    }
    
    private func addForgotPasswordButton() {
        view.addSubview(forgotPasswordButton)
        forgotPasswordButton.topToBottom(of: verticalStackView).constant = 10
        forgotPasswordButton.trailingToSuperview().constant = -15
        forgotPasswordButton.height(20)
    }
    
}
// MARK: - Configure and setLocalize
extension LoginViewController {
    private func configureContents() {
        view.backgroundColor = .white
        usernameTextField.autocapitalizationType = .none
        usernameTextField.leftImage = .icUser
        passwordTextField.leftImage = .icPassword
        passwordTextField.isSecureTextEntry = true
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        forgotPasswordButton.addTarget(self, action: #selector(forgotPasswordButtonTapped), for: .touchUpInside)
        registerScreenButton.addTarget(self, action: #selector(regiserButtonTapped), for: .touchUpInside)
        configureCancelRightBarButton()
      
    }
    private func setLocalize() {
        titleLabel.text = Strings.LoginViewController.title
        usernameTextField.title = Strings.Placeholder.username
        passwordTextField.title = Strings.Placeholder.password
        loginButton.setTitle(Strings.LoginViewController.title, for: .normal)
        forgotPasswordButton.setTitle(Strings.LoginViewController.forgotPassword, for: .normal)
        registerScreenButton.setTitle(Strings.LoginViewController.bottomRedText, for: .normal)
        bottomLabel.text = Strings.LoginViewController.bottomBlackText
    }
    
    private func configureCancelRightBarButton() {
        let image = UIImage.icClose.withRenderingMode(.alwaysTemplate)
        let cancelBarButton = UIBarButtonItem(image: image, style: .done, target: self, action: #selector(dismissLoginViewController))
        cancelBarButton.tintColor = UIColor.black
        navigationItem.rightBarButtonItem = cancelBarButton
    }
    
}

// MARK: - Actions
extension LoginViewController {
    
    @objc
    private func regiserButtonTapped() {
        viewModel.showRegisterScene()
    }
    
    @objc
    private func loginButtonTapped() {
        view.endEditing(true)
        guard let userName = usernameTextField.text,
              let password = passwordTextField.text else {
            showWarningToast(message: Strings.Error.emptyFields)
            return
        }
        let validation = Validation()
        guard validation.isValidPassword(password) else { return }
        
        viewModel.sendLoginRequest(username: userName, password: password)
    }
    
    @objc
    private func forgotPasswordButtonTapped() {
        viewModel.pushPasswordResetScene()
    }
    
    @objc
    private func dismissLoginViewController() {
        viewModel.dismissLoginScene()
    }
}


