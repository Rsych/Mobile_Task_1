//
//  CurrencyView.swift
//  Mobile_Task_1
//
//  Created by Ryan J. W. Kim on 2022/11/12.
//

import UIKit

class CurrencyView: UIViewController {
// MARK: - Outlets

    @IBOutlet private weak var topTextfield: DesignableUITextField!
    @IBOutlet private weak var bottomTextfield: DesignableUITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        setupTextFields()
        setupNotifications()
    }
// MARK: - Functions
    private func setupNavigation() {
        navigationController?.isNavigationBarHidden = false
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "arrow-left"), style: .done, target: self, action: #selector(dismissScreen))
    }

    func setupTextFields() {
        topTextfield.addDoneButtonOnKeyboard()
        topTextfield.keyboardType = .decimalPad
        topTextfield.tag = 0
        topTextfield.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)

        bottomTextfield.addDoneButtonOnKeyboard()
        bottomTextfield.keyboardType = .decimalPad
        bottomTextfield.tag = 1
        bottomTextfield.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }

    func setupNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    // MARK: - Action
    @objc func dismissScreen() {
        self.navigationController?.popViewController(animated: true)
    }
    @objc func textFieldDidChange(_ textField: UITextField, text: String) {
        debugPrint("***** \(textField.tag)")
    }

    // MARK: - Keyboard notifications

    @objc private func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            self.view.frame.origin.y = 0 - keyboardSize.height
        }
    }

    @objc private func keyboardWillHide(notification: NSNotification) {
        self.view.frame.origin.y = 0
    }
    
}
