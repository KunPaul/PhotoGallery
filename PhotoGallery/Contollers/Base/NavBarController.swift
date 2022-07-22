//
//  NavBarController.swift
//  PhotoGallery
//
//  Created by Павел Кунгурцев on 22.07.2022.
//

import Foundation
import UIKit

final class NavBarController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
      
    }
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [.foregroundColor: Resources.Colors.titleblack,
                                                                .font: Resources.Fonts.helvelticaRegular(with: 18)
        ]
        
        navigationBar.addBottonBorder(with: Resources.Colors.separator, height: 1)
    }
}


