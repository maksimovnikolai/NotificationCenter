//
//  TabBarController.swift
//  NotificationCenterApp
//
//  Created by Nikolai Maksimov on 22.01.2024.
//

import UIKit

final class TabBarController: UITabBarController {
    
    private lazy var notifierVC: NotifierViewController = {
        let notifierVC = NotifierViewController()
        notifierVC.tabBarItem.title = "NotifierVC"
        notifierVC.tabBarItem.image = UIImage(systemName: "1.circle")
        return notifierVC
    }()
    private lazy var firstObserverVC: FirstObserverViewController = {
        let firstObserverVC = FirstObserverViewController()
        firstObserverVC.tabBarItem.title = "1-observer"
        firstObserverVC.tabBarItem.image = UIImage(systemName: "2.circle")
        return firstObserverVC
    }()
    
    private lazy var secondObserverVC: SecondObserverViewController = {
        let secondObserverVC = SecondObserverViewController()
        secondObserverVC.tabBarItem.title = "2-observer"
        secondObserverVC.tabBarItem.image = UIImage(systemName: "3.circle")
        return secondObserverVC
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }
    
    private func commonInit() {
        view.backgroundColor = .white
        viewControllers = [notifierVC, firstObserverVC, secondObserverVC]
    }
}
