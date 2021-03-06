//
//  TabBarViewController.swift
//  Tumblrr
//
//  Created by Dorahan Arapgirlioglu on 2/22/16.
//  Copyright © 2016 Dorahan Arapgirlioglu. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var popUpView: UIImageView!

    @IBOutlet var buttons: [UIButton]!
    
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!

    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    var popUpDown = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Access the main Storyboard through code
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //instantiate each ViewController by referencing storyboard and the particular ViewController's Storyboard ID
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        //Setting the initial tab for the button (since there is no tab selected yet)
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didPressTab(sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        buttons[previousIndex].selected = false
        let previousVC = viewControllers[previousIndex]
        
        
        //Remove the previous view from the Previous ViewController
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        
        //Access current selected button
        sender.selected = true
        
        //Access selected ViewController
        let vc = viewControllers[selectedIndex]
        
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        //Call the viewDidAppear method
        vc.didMoveToParentViewController(self)
        
        
        if selectedIndex == 1 {
            UIView.animateWithDuration(0.3, delay: 0, options: .CurveEaseOut, animations: { () -> Void in
                self.popUpView.alpha = 0
                }, completion: { (Bool) -> Void in
                self.popUpDown = false
            })
        } else {
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                if self.popUpDown == true {
                self.popUpView.alpha = 1
                }
            })
            
            UIView.animateWithDuration(0.5, delay: 0, options: [.CurveEaseInOut, .Repeat, .Autoreverse], animations: { () -> Void in
                if self.popUpDown == true {
                    //self.popUpDown = false
                    self.popUpView.center.y = 487
                }
                }, completion: { (Bool) -> Void in
            })
            
        }
        
        
    }
    
//    override func viewWillAppear(animated: Bool) {
//        if selectedIndex == 1 {
//            UIView.animateWithDuration(0.3, delay: 0, options: .CurveEaseOut, animations: { () -> Void in
//                self.popUpView.alpha = 0
//                }, completion: { (Bool) -> Void in
//                    
//            })
//        } else {
//            UIView.animateWithDuration(0.3, delay: 0, options: [.CurveEaseInOut, .Repeat], animations: { () -> Void in
//                self.popUpView.alpha = 1
//                if self.popUpDown == true {
//                    self.popUpDown = false
//                    self.popUpView.center.y = 417
//                } else {
//                    self.popUpDown = true
//                    self.popUpView.center.y = 455
//                    
//                }
//                }, completion: { (Bool) -> Void in
//                    
//            })
//            
//        }
//    }
    
    
    
    


}
