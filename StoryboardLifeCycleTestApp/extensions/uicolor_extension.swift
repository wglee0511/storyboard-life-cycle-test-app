//
//  uicolor_extension.swift
//  StoryboardLifeCycleTestApp
//
//  Created by racoon on 6/1/24.
//

import UIKit

extension UIColor {
    static var getRandomColor: UIColor {
        let red = CGFloat.random(in: 0 ..< 256) / 255
        let green = CGFloat.random(in: 0 ..< 256) / 255
        let blue = CGFloat.random(in: 0 ..< 256) / 255
        
        return UIColor(red: red, green: green , blue: blue, alpha: 1.0)
    }
}
