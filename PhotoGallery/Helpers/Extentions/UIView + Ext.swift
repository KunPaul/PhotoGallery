//
//  UIView + Ext.swift
//  PhotoGallery
//
//  Created by Павел Кунгурцев on 22.07.2022.
//

import UIKit

extension UIView {
    func addBottonBorder(with color: UIColor, height: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0,
                                 y: frame.height - height ,
                                 width: frame.width,
                                 height: height)
        addSubview(separator)
    }
}
