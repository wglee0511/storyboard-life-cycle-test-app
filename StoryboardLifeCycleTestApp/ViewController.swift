//
//  ViewController.swift
//  StoryboardLifeCycleTestApp
//
//  Created by racoon on 5/30/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var centerImage: UIImageView!
    
    @IBOutlet weak var switchValue: UISwitch!
    
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBAction func openPinkView(_ sender: Any) {
        let storyboardValue = UIStoryboard(name: "sub", bundle: nil)
        let viewControllerValue = storyboardValue.instantiateViewController(identifier: "pinkView")
        
        
        present(viewControllerValue, animated: true)
        
    }
    
    @IBAction func openSubStoryboard(_ sender: Any) {
        let viewControllerValue = storyboard?.instantiateViewController(identifier: "openToCodeViewController")
        
        guard let viewControllerGuardValue = viewControllerValue else {
            return
        }
        
        present(viewControllerGuardValue, animated: true)
    }
    
    @IBAction func viewInitialController(_ sender: Any) {
        let viewContollerValue = storyboard?.instantiateInitialViewController()
        
        guard let viewContollerGuardValue = viewContollerValue else {
            return
        }
        present(viewContollerGuardValue, animated: true)
    }
    
    
    @IBAction func onChangeSlider(_ sender: Any) {
        if sliderValue.value == 0.0 {
            switchValue.isOn = false
        } else {
            switchValue.isOn = true
        }
        centerImage.alpha = CGFloat(sliderValue.value)
    }
    
    
    @IBAction func onPressImageSwitch(_ sender: Any) {
        if switchValue.isOn {
            centerImage.alpha = CGFloat(1)
            sliderValue.value = 1.0
        } else {
            centerImage.alpha = CGFloat(0)
            sliderValue.value = 0.0
        }
    }
    
    
    
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
        centerImage.alpha = 0.0
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

