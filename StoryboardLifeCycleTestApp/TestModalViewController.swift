//
//  TestModalViewController.swift
//  StoryboardLifeCycleTestApp
//
//  Created by racoon on 6/1/24.
//

import UIKit

class TestModalViewController: UIViewController {
    
    
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var blueView: UIView!
    
    
    @IBAction func onPressMenuButton(_ sender: Any) {
        let menuSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let addViewAction = UIAlertAction(title: "Add Random View", style: .default) { _ in
            self.addRandomView()
        }
        
        let insertViewBack = UIAlertAction(title: "Insert View Back", style: .default) { _ in
            self.insertViewBack()
        }
        
        let removeTopView = UIAlertAction(title: "Remove Top View", style: .default) { _ in
            self.removeTopView()
        }
        
        let setRedViewTop = UIAlertAction(title: "Set Red View to Top", style: .default) { _ in
            self.setTopView(viewValue: self.redView)
        }
        
        let setRedViewBottom = UIAlertAction(title: "Set Red View to Bottom", style: .default) { _ in
            self.setBottonView(viewValue: self.redView)
        }
        
        let setGreenViewTop = UIAlertAction(title: "Set Green View to Top", style: .default) { _ in
            self.setTopView(viewValue: self.greenView)
        }
        
        let setGreenViewBottom = UIAlertAction(title: "Set Green View to Bottom", style: .default) { _ in
            self.setBottonView(viewValue: self.greenView)
        }
        
        let setBlueViewTop = UIAlertAction(title: "Set Blue View to Top", style: .default) { _ in
            self.setTopView(viewValue: self.blueView)
        }
        
        let setBlueViewBottom = UIAlertAction(title: "Set Blue View to Bottom", style: .default) { _ in
            self.setBottonView(viewValue: self.blueView)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        menuSheet.addAction(addViewAction)
        menuSheet.addAction(insertViewBack)
        menuSheet.addAction(removeTopView)
        menuSheet.addAction(setRedViewTop)
        menuSheet.addAction(setRedViewBottom)
        menuSheet.addAction(setGreenViewTop)
        menuSheet.addAction(setGreenViewBottom)
        menuSheet.addAction(setBlueViewTop)
        menuSheet.addAction(setBlueViewBottom)
        menuSheet.addAction(cancelAction)
        
        present(menuSheet, animated: true)
    }
    
    func setBottonView (viewValue: UIView) {
        view.sendSubviewToBack(viewValue)
    }
    
    func setTopView (viewValue: UIView) {
        view.bringSubviewToFront(viewValue)
    }
    
    func removeTopView () {
        let topView = view.subviews.reversed().first { $0.tag > 0 }
        topView?.removeFromSuperview()
        
    }
    
    func addRandomView () {
        let viewValue = getNewView()
        
        view.addSubview(viewValue)
    }
    
    func insertViewBack () {
        let viewValue = getNewView()
        
        view.insertSubview(viewValue, at: 0)
    }
    
    func getNewView () -> UIView {
        let frameValue = CGRect(x: 0, y: 0, width: 200, height: 200)
        let viewValue = UIView(frame: frameValue)
        let viewWidth = view.bounds.width - 100
        let viewHeight = view.bounds.height - 100
        
        viewValue.center = CGPoint(x: Double.random(in: 100 ... viewWidth), y: Double.random(in: 100 ... viewHeight))
        viewValue.backgroundColor = UIColor.getRandomColor
        viewValue.tag = Int.random(in: 0 ..< Int(Int16.max)) + 1
        
        return viewValue
    }
    

    @IBAction func onPressCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
