//
//  SplashViewController.swift
//  StoryboardLifeCycleTestApp
//
//  Created by racoon on 5/31/24.
//

import UIKit

class SplashViewController: UIViewController {
    
    
    @IBOutlet weak var progress: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progress.setProgress(1.0, animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.performSegue(withIdentifier: "replaceSegue", sender: nil)
        }
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
