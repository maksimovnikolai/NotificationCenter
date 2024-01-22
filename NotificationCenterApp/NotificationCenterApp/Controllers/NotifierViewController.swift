//
//  NotifierViewController.swift
//  NotificationCenterApp
//
//  Created by Nikolai Maksimov on 22.01.2024.
//

import UIKit

final class NotifierViewController: UIViewController {
    
    private let notifierView = NotifierView()
    
    override func loadView() {
        view = notifierView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
