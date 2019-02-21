//
//  ConstraintViewController.swift
//  Tuber
//
//  Created by Sam Meech-Ward on 2019-02-21.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import UIKit

class ConstraintViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
      let view1 = UIView()
      view1.backgroundColor = .blue
      view1.translatesAutoresizingMaskIntoConstraints = false
      view.addSubview(view1)
      
//      NSLayoutConstraint(item: view1, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0).isActive = true
      
      view1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
      view1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
      view1.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
      view1.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
      
      // You must always specify enough constraints so that the view can determine it's width, height, and location
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
