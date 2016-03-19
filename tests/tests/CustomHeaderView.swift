//
//  CustomHeaderView.swift
//  tests
//
//  Created by Tejen Hasmukh Patel on 3/19/16.
//  Copyright © 2016 Tejen Patel / Lisa Maldonado. All rights reserved.
//

import UIKit

class CustomHeaderView: UIView {
    
    @IBOutlet var image: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()

        fadeOutImage();
    }
    
    func fadeInImage() {
        
        UIView.animateWithDuration(2.0, animations: { () -> Void in
            self.image.alpha = 0.9;
        }) { (success: Bool) -> Void in
            self.fadeOutImage();
        }
        
    }
    
    func fadeOutImage() {
        UIView.animateWithDuration(2.0, animations: { () -> Void in
            self.image.alpha = 0.1;
            }) { (success: Bool) -> Void in
//                self.fadeInImage();
        }
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
