//
//  BSABaseViewController.swift
//  DLHamburguerMenu
//
//  Created by Hector H. De Diego Brito on 10/21/16.
//  Copyright © 2016 Ignacio Nieto Carvajal. All rights reserved.
//

import UIKit
import Foundation

class BSABaseViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("viewDidLoad desde base")
    
    UIApplication.sharedApplication().statusBarStyle = .LightContent

    // Do any additional setup after loading the view.
  }
  
  override func viewWillDisappear(animated: Bool) {
    super.viewWillDisappear(animated)
    
    UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
//  - (UIStatusBarStyle)preferredStatusBarStyle
//  {
//  return UIStatusBarStyleLightContent;
//  }
  
  override func preferredStatusBarStyle() -> UIStatusBarStyle {
    print("SOMEBODY SAVE ME")
    return UIStatusBarStyle.LightContent
  }
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
}


extension UIApplication {
  class func topViewController(base: UIViewController? = UIApplication.sharedApplication().keyWindow?.rootViewController) -> UIViewController? {
    if let nav = base as? UINavigationController {
      return topViewController(nav.visibleViewController)
    }
    if let tab = base as? UITabBarController {
      if let selected = tab.selectedViewController {
        return topViewController(selected)
      }
    }
    if let presented = base?.presentedViewController {
      return topViewController(presented)
    }
    return base
  }
}
