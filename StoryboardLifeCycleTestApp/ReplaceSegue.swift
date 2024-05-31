//
//  ReplaceSegue.swift
//  StoryboardLifeCycleTestApp
//
//  Created by racoon on 5/31/24.
//

import UIKit

class ReplaceSegue: UIStoryboardSegue {
    override func perform() {
        guard let window = source.view.window else {
            return
        }
        
        window.rootViewController = destination
        
        UIView.transition(with: window, duration: 0.3, animations: nil)
    }
}
