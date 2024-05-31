//
//  ViewController.swift
//  StoryboardLifeCycleTestApp
//
//  Created by racoon on 5/30/24.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onPressSetting(_ sender: Any) {
        guard let url = URL(string: UIApplication.openSettingsURLString) else  {
            return
        }
        
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url
            )
        }
    }
    
    @IBAction func onPressOpenUrl(_ sender: Any) {
        guard let url = URL(string: "https://m.naver.com") else  {
            return
        }
        
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url
            )
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        guard let appScene = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate else {
            return
        }
        
//        guard let sceneDelegate = view.window?.windowScene?.delegate as? SceneDelegate else {
//            return
//        }

        print(appDelegate.sharedAppDelegateData)
        print(appScene.sharedSceneDelegateData)
//        print(sceneDelegate.sharedSceneDelegateData)
    }


}

