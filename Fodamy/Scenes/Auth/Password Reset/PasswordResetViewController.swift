//
//  PasswordResetViewController.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 12.03.2022.
//

import UIKit

final class PasswordResetViewController: BaseViewController<PasswordResetViewModel> {
    
    private let titleLabel = UILabelBuilder()
        .textColor(.appCinder)
        .font(.font(.nunitoBold, size: .xxLarge))
        .build()
    
    private let stackView = UIStackViewBuilder()
        .axis(.vertical)
        .spacing(15)
        .build()
    private var emailTextField = FloatLabelTextField()
    private var resetButton = ButtonFactory.createPrimaryButton(style: .large)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        configureContents()
        setLocalize()
    }
    
}
// MARK: - UILayout
extension PasswordResetViewController {
    
    private func addSubViews() {
        addTitleLabel()
        addStackView()
    }
    private func addTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.topToSuperview(usingSafeArea: true).constant = 50
        titleLabel.centerXToSuperview()    }
    
    private func addStackView() {
        view.addSubview(stackView)
        stackView.topToBottom(of: titleLabel).constant = 50
        stackView.leadingToSuperview().constant = 15
        stackView.trailingToSuperview().constant = -15
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(resetButton)
    }
}
// MARK: - Configure and Set Localize
extension PasswordResetViewController {
    
    private func configureContents() {
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(image: UIImage(), style: .plain, target: self, action: nil)
        emailTextField.leftImage = .icMail
        emailTextField.autocapitalizationType = .none
        emailTextField.keyboardType = .emailAddress
        resetButton.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
    }
    
    private func setLocalize() {
        titleLabel.text = Strings.PasswordResetController.title
        emailTextField.title = Strings.Placeholder.email
        resetButton.setTitle(Strings.PasswordResetController.reset, for: .normal)
    }
    
}

// MARK: - Actions
extension PasswordResetViewController {
    
    @objc
    private func resetButtonTapped() {
        guard let email = emailTextField.text, !email.isEmpty else {
            showWarningToast(message: Strings.Error.empty(Strings.Key.email))
            return
        }
        let validation = Validation()
        guard validation.isValidEmail(email) else { return }
        
        viewModel.passwordReset(email: email)
    }
    
}
