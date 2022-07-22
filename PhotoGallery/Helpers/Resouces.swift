//
//  Resouces.swift
//  PhotoGallery
//
//  Created by Павел Кунгурцев on 21.07.2022.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inactive = UIColor(hexString: "#929DA5")
        
        static var separator = UIColor(hexString: "#E8ECEF")
    }
    
    enum Strings {
        enum tabBar {
            static var media = "Mедиатека"
            static var forMe = "Для вас"
            static var album = "Альбомы"
            static var search = "Поиск"
        }
    }
    enum Images {
        static var media = UIImage(systemName: "photo.fill.on.rectangle.fill")
        static var forMe = UIImage(systemName: "lanyardcard.fill")
        static var album = UIImage(systemName: "rectangle.stack.fill")
        static var search = UIImage(systemName: "magnifyingglass")
    }
    
}
