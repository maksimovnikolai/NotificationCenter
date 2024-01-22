//
//  NotifierViewController.swift
//  NotificationCenterApp
//
//  Created by Nikolai Maksimov on 22.01.2024.
//

import UIKit

final class NotifierViewController: UIViewController {
    
    private let notifierView = NotifierView()
    
    private var dataModel: DataModel!
    
    init(dataModel: DataModel) {
        super.init(nibName: nil, bundle: nil)
        self.dataModel = dataModel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = notifierView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        notifierView.button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc
    private func buttonPressed() {
        notifierView.textField.resignFirstResponder()
        dataModel.setName(name: notifierView.textField.text ?? "")
    }
}
