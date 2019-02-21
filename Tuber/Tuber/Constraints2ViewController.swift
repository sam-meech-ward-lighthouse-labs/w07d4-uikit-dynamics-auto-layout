//
//  Constraints2ViewController.swift
//  Tuber
//
//  Created by Sam Meech-Ward on 2019-02-21.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import UIKit

class Constraints2ViewController: UIViewController {
  
  @IBOutlet weak var settingsHeightConstraints: NSLayoutConstraint!
  
  @IBOutlet weak var soupImageView: UIImageView!
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      settingsHeightConstraints.constant = 0
    }
    
  @IBAction func longPress(_ sender: UILongPressGestureRecognizer) {
    
    if (sender.state == .began) {
      toggleSettings()
      UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
        
        self.view.layoutIfNeeded()
        
        self.soupImageView.transform = self.soupImageView.transform.scaledBy(x: 2.0, y: 2.0)
        self.soupImageView.transform = self.soupImageView.transform.translatedBy(x: 100, y: 0)
        self.soupImageView.transform = self.soupImageView.transform.rotated(by: CGFloat.pi/4.0)
        
        
      }, completion: { _ in
        self.soupImageView.transform = CGAffineTransform.identity
      })
//      UIView.animate(withDuration: 1.0, animations: view.layoutIfNeeded)
      
      
    }
    
    
    
  }
  
  func toggleSettings() {
    settingsHeightConstraints.constant = settingsHeightConstraints.constant == 100 ? 0 : 100
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
