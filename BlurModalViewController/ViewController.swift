//
//  ViewController.swift
//  BlurModalViewController
//
//  Created by Luca D'Incà on 18/05/16.
//  Copyright © 2016 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func didPressOnOpenBlurViewController(sender: AnyObject) {
    let blurVC = BlurVC()
    
    blurVC.modalPresentationStyle = .OverCurrentContext
    self.presentViewController(blurVC, animated: true, completion: nil)
  }
  
  @IBAction func didPressOnOpenBlurTableViewController(sender: AnyObject) {
    let blurTVC = BlurTVC()
    
    blurTVC.modalPresentationStyle = .OverCurrentContext
    self.presentViewController(blurTVC, animated: true, completion: nil)
  }
  
}

