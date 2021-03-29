//
//  UIImageView.swift
//  Mobile2YouChallenge
//
//  Created by DevLuis on 28/03/21.
//

import UIKit

extension UIImageView {
    static func photoImageView(named: String? = nil) -> UIImageView {
        let imageView = UIImageView()
        if let named = named {
            imageView.image = UIImage(named: named)
        }
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }
}
