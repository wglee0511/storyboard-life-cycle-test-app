//
//  LanchScreenViewController.swift
//  StoryboardLifeCycleTestApp
//
//  Created by racoon on 5/31/24.
//

import UIKit

class LanchScreenViewController: UIViewController {
    
    @IBOutlet weak var launchImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        launchImage.image = UIImage(systemName: "heart.fill")

        // Do any additional setup after loading the view.
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
