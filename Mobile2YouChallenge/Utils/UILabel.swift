//
//  UILabel.swift
//  Mobile2YouChallenge
//
//  Created by DevLuis on 28/03/21.
//

import UIKit

extension UILabel {
    
    static func textLabel(_ size: CGFloat, textColor: UIColor = .black, numberOfLines: Int = 1) -> UILabel {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: size)
        label.textColor = textColor
        label.numberOfLines = numberOfLines
        return label
    }
    
    static func textBoldLabel(_ size: CGFloat, textColor: UIColor = .black, numberOfLines: Int = 1) -> UILabel {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: size)
        label.textColor = textColor
        label.numberOfLines = numberOfLines
        return label
    }
    
}
