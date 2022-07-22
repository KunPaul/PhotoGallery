//
//  TabBarController.swift
//  PhotoGallery
//
//  Created by Павел Кунгурцев on 21.07.2022.
//

import UIKit

enum Tabs: Int {
    case media
    case forMe
    case album
    case search
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let mediaController = UIViewController()
        let forMeController = UIViewController()
        let albumController = UIViewController()
        let searchController = UIViewController()
        
        let mediaNavigation = UINavigationController(rootViewController: mediaController )
        let forMeNavigation = UINavigationController(rootViewController: forMeController )
        let albumNavigation = UINavigationController(rootViewController: albumController )
        let searchNavigation = UINavigationController(rootViewController: searchController )
        
        mediaNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.tabBar.media,
                                                  image: Resources.Images.media,
                                                  tag: Tabs.media.rawValue)
        forMeNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.tabBar.forMe,
                                                  image: Resources.Images.forMe,
                                                  tag: Tabs.forMe.rawValue)
        albumNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.tabBar.album,
                                                  image: Resources.Images.album,
                                                  tag: Tabs.album.rawValue)
        searchNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.tabBar.search,
                                                   image: Resources.Images.search,
                                                   tag: Tabs.search.rawValue)
        
        setViewControllers([
            mediaNavigation,
            forMeNavigation,
            albumNavigation,
            searchNavigation],
            animated: false)
    }
}
