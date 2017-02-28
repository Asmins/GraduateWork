//
//  BlurImageView.swift
//  iOSMessenger
//
//  Created by Asmins on 22.02.17.
//  Copyright © 2017 Asmins. All rights reserved.
//
import UIKit
import Foundation

class BlurImageView: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        addBlurEffect()
    }

    func addBlurEffect() {
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.alpha = 0.75
        blurEffectView.frame = self.bounds

        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight] 
        self.addSubview(blurEffectView)
    }

}
