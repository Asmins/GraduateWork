//
//  LineView.swift
//  iOSMessenger
//
//  Created by Asmins on 28.02.17.
//  Copyright © 2017 Asmins. All rights reserved.
//
import UIKit
import Foundation

class LineView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func draw(_ rect: CGRect) {
        let aPath = UIBezierPath()
        aPath.move(to: CGPoint(x: self.bounds.width / 2, y: 0))
        aPath.addLine(to: CGPoint(x: self.bounds.width / 2, y: self.bounds.height))
        aPath.lineWidth = 1.0
        aPath.close()
        UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1).set()
        aPath.stroke()
        aPath.fill()
    }
}
