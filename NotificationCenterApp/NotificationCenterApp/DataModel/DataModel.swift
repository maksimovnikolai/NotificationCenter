//
//  DataModel.swift
//  NotificationCenterApp
//
//  Created by Nikolai Maksimov on 22.01.2024.
//

import Foundation


final class DataModel {
    
    // Ключ Уведомления
    static let nameSetNotification = "NameSetNotification"
    
    private var name = ""
    
    public func getName() -> String {
        return name
    }
    
    public func setName(name: String) {
        self.name = name
        // Создание уведомления
        NotificationCenter.default.post(name: Notification.Name(DataModel.nameSetNotification), object: nil, userInfo: [DataModel.nameSetNotification: name])
    }
}
