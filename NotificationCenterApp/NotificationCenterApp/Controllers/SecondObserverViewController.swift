//
//  SecondObserverViewController.swift
//  NotificationCenterApp
//
//  Created by Nikolai Maksimov on 22.01.2024.
//

import UIKit

final class SecondObserverViewController: UIViewController {
    
    private let secondObserverView = SecondObserverView()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        registerForNotifications()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func loadView() {
        view = secondObserverView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        registerForNotifications()
    }
    
    // Добавление объекта (self), который отслеживает изменения в качестве наблюдателя
    private func registerForNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(didChangeName), name: Notification.Name(DataModel.nameSetNotification), object: nil)
    }
    
    // Метод удаления наблюдателя, когда SecondViewController будет выгружен из памяти
    private func unregisterForNotifications() {
        NotificationCenter.default.removeObserver(self, name: Notification.Name(DataModel.nameSetNotification), object: nil)
    }
    
    // Метод, который выполниться, когда наблюдатель получит сообщение
    @objc private func didChangeName(_ notification: Notification) {
        guard let name = notification.userInfo?[DataModel.nameSetNotification] as? String else {
            return
        }
        secondObserverView.label.text = name
    }
    
    // Вызов метода удаления наблюдателя
    deinit {
        print("deinit")
        unregisterForNotifications()
    }
    
}
