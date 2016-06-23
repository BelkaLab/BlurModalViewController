//
//  BlurVC.swift
//  BlurModalViewController
//
//  Created by Luca D'Incà on 18/05/16.
//  Copyright © 2016 Belka. All rights reserved.
//

import UIKit

class BlurVC: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = UIColor.clearColor()
    
    let blurEffect = UIBlurEffect(style: .ExtraLight)
    let blurEffectView = UIVisualEffectView(effect: blurEffect)
    blurEffectView.frame = self.view.frame
    
    self.view.insertSubview(blurEffectView, atIndex: 0)
    
    let closeButton = UIButton(frame: CGRect(x: 0, y: 10, width: 100, height: 50))
    closeButton.setTitle("Close", forState: .Normal)
    closeButton.setTitleColor(UIColor.darkGrayColor(), forState: .Normal)
    closeButton.addTarget(self, action: #selector(BlurVC.didPressOnCloseButton(_:)), forControlEvents: .TouchUpInside)
    
    self.view.addSubview(closeButton)
  }
  
  //MARK: - Action methods
  @IBAction func didPressOnCloseButton(sender: AnyObject) {
    self.dismissViewControllerAnimated(true, completion: nil)
  }
}
