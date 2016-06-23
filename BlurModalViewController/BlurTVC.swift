//
//  BlurTVC.swift
//  BlurModalViewController
//
//  Created by Luca D'Incà on 19/05/16.
//  Copyright © 2016 Belka. All rights reserved.
//

import UIKit

class BlurTVC: UITableViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.tableView.backgroundColor = UIColor.clearColor()
    
    let blurEffect = UIBlurEffect(style: .ExtraLight)
    let blurEffectView = UIVisualEffectView(effect: blurEffect)
    blurEffectView.frame = self.view.frame
    
    self.tableView.separatorEffect = UIVibrancyEffect(forBlurEffect: blurEffect)
    self.tableView.backgroundView = blurEffectView
    
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
