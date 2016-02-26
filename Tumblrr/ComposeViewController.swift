//
//  ComposeViewController.swift
//  Tumblrr
//
//  Created by Dorahan Arapgirlioglu on 2/22/16.
//  Copyright © 2016 Dorahan Arapgirlioglu. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textBtn: UIButton!
    @IBOutlet weak var photoBtn: UIButton!
    @IBOutlet weak var quoteBtn: UIButton!
    @IBOutlet weak var linkBtn: UIButton!
    @IBOutlet weak var chatBtn: UIButton!
    @IBOutlet weak var videoBtn: UIButton!
    
    
    var textBtnOriginalPosition: CGFloat!
    var photoBtnOriginalPosition: CGFloat!
    var quoteBtnOriginalPosition: CGFloat!
    var linkBtnOriginalPosition: CGFloat!
    var chatBtnOriginalPosition: CGFloat!
    var videoBtnOriginalPosition: CGFloat!
    
    //    var buttons: [UIButton]! = [textBtn, photoBtn, quoteBtn, linkBtn, chatBtn, videoBtn]
    //    var originals: [CGFloat]! = [textBtnOriginalPosition, photoBtnOriginalPosition, quoteBtnOriginalPosition, linkBtnOriginalPosition, chatBtnOriginalPosition, videoBtnOriginalPosition]
    var offset: [CGFloat]! = [700, -200]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
        //          originals = [textBtnOriginalPosition, photoBtnOriginalPosition, quoteBtnOriginalPosition, linkBtnOriginalPosition, chatBtnOriginalPosition, videoBtnOriginalPosition]
        //          buttons = [textBtn, photoBtn, quoteBtn, linkBtn, chatBtn, videoBtn]
        
        textBtnOriginalPosition = textBtn.center.y
        photoBtnOriginalPosition = photoBtn.center.y
        quoteBtnOriginalPosition = quoteBtn.center.y
        linkBtnOriginalPosition = linkBtn.center.y
        chatBtnOriginalPosition = chatBtn.center.y
        videoBtnOriginalPosition = videoBtn.center.y
        

    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
            textBtn.center.y = offset[0]
            photoBtn.center.y = offset[0]
            quoteBtn.center.y = offset[0]
            linkBtn.center.y = offset[0]
            chatBtn.center.y = offset[0]
            videoBtn.center.y = offset[0]
        UIView.animateWithDuration(0.3, delay: 0.26, options: .CurveEaseInOut, animations: { () -> Void in
            self.textBtn.center.y = self.textBtnOriginalPosition
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.2, options: .CurveEaseInOut, animations: { () -> Void in
            self.photoBtn.center.y = self.photoBtnOriginalPosition
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.26, options: .CurveEaseInOut, animations: { () -> Void in
            self.quoteBtn.center.y = self.quoteBtnOriginalPosition
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.35, options: .CurveEaseInOut, animations: { () -> Void in
            self.linkBtn.center.y = self.linkBtnOriginalPosition
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.29, options: .CurveEaseInOut, animations: { () -> Void in
            self.chatBtn.center.y = self.chatBtnOriginalPosition
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.35, options: .CurveEaseInOut, animations: { () -> Void in
            self.videoBtn.center.y = self.videoBtnOriginalPosition
            }, completion: nil)
        
        
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
//        UIView.animateWithDuration(0.3, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
//            self.textBtn.center.y = self.textBtnOriginalPosition
//            self.photoBtn.center.y = self.photoBtnOriginalPosition
//            self.quoteBtn.center.y = self.quoteBtnOriginalPosition
//            self.linkBtn.center.y = self.linkBtnOriginalPosition
//            self.chatBtn.center.y = self.chatBtnOriginalPosition
//            self.videoBtn.center.y = self.videoBtnOriginalPosition
//            }, completion: nil)
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func dismissComposeView(sender: UIButton) {
        
        UIView.animateWithDuration(0.5, delay: 0.05, options: .CurveEaseInOut, animations: { () -> Void in
            self.textBtn.center.y = self.offset[1]
            }, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
            self.photoBtn.center.y = self.offset[1]
            }, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0.07, options: .CurveEaseInOut, animations: { () -> Void in
            self.quoteBtn.center.y = self.offset[1]
            }, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0.15, options: .CurveEaseInOut, animations: { () -> Void in
            self.linkBtn.center.y = self.offset[1]
            }, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0.1, options: .CurveEaseInOut, animations: { () -> Void in
            self.chatBtn.center.y = self.offset[1]
            }, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0.17, options: .CurveEaseInOut, animations: { () -> Void in
            self.videoBtn.center.y = self.offset[1]
            }, completion: nil)
        delay(0.2) {
        self.dismissViewControllerAnimated(true, completion: nil)
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
