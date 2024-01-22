//
//  NotifierView.swift
//  NotificationCenterApp
//
//  Created by Nikolai Maksimov on 22.01.2024.
//

import UIKit

class NotifierView: UIView {
    
    public lazy var textField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "enter your name"
        tf.backgroundColor = .orange
        return tf
    }()
    
    public lazy var button: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.configuration?.title = "Передать имя на другие экраны"
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupTextField()
        setupButton()
    }
    
    private func setupTextField() {
        addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            textField.centerXAnchor.constraint(equalTo: centerXAnchor),
            textField.heightAnchor.constraint(equalToConstant: 29),
            textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    private func setupButton() {
        addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20)
        ])
    }
}
