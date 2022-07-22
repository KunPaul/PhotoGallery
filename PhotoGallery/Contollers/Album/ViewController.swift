//
//  ViewController.swift
//  PhotoGallery
//
//  Created by Павел Кунгурцев on 19.07.2022.
//

import UIKit

class AlbumController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Resources.Strings.tabBar.album
        navigationController?.tabBarItem.title = Resources.Strings.tabBar.album
        
        addNavBarButton(at: .left, with: "+")
        
    }
    override func navBarLeftButtonHandler() {
        print("Album NavBar left button tapped")
    }


}

