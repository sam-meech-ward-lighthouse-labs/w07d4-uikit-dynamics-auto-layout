//
//  ViewController.swift
//  Tuber
//
//  Created by Sam Meech-Ward on 2019-02-21.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var dynamicAnimator: UIDynamicAnimator!
  var square2: UIView!
  var gravity: UIGravityBehavior!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    dynamicAnimator = UIDynamicAnimator(referenceView: view)
    
    let squareSize:CGFloat = 80
    let square = UIView(frame: CGRect(x: view.frame.width/2.0-squareSize/2.0, y: 0, width: squareSize, height: squareSize))
    square.backgroundColor = .orange
    view.addSubview(square)
    
    let itemBehavoir = UIDynamicItemBehavior(items: [square])
    itemBehavoir.elasticity = 0.9
    
    dynamicAnimator.addBehavior(itemBehavoir)
    
    square2 = UIView(frame: CGRect(x: view.frame.width/2.0-squareSize/2.0+10, y: 200, width: squareSize, height: squareSize))
    square2.backgroundColor = .magenta
    view.addSubview(square2)
    
    
    gravity = UIGravityBehavior(items: [square])
    let collision = UICollisionBehavior(items: [square, square2])
    
    collision.collisionDelegate = self
    
    collision.translatesReferenceBoundsIntoBoundary = true
    
    dynamicAnimator.addBehavior(gravity)
    dynamicAnimator.addBehavior(collision)
  }

}

extension ViewController: UICollisionBehaviorDelegate {
  func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item1: UIDynamicItem, with item2: UIDynamicItem, at p: CGPoint) {
    gravity.addItem(square2)
  }
}

