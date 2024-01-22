//
//  SecondObserverViewController.swift
//  NotificationCenterApp
//
//  Created by Nikolai Maksimov on 22.01.2024.
//

import UIKit

final class SecondObserverViewController: UIViewController {
    
    private let secondObserverView = SecondObserverView()
    
    override func loadView() {
        view = secondObserverView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
}
