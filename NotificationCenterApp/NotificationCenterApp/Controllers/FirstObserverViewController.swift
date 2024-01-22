//
//  FirstObserverViewController.swift
//  NotificationCenterApp
//
//  Created by Nikolai Maksimov on 22.01.2024.
//

import UIKit

final class FirstObserverViewController: UIViewController {
    
    private let firstObserverView = FirstObserverView()
    
    override func loadView() {
        view = firstObserverView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
