//
//  UIViewController.swift
//  WAUIKitCore iOS
//
//  Created by Panghu on 3/22/20.
//

import UIKit
import WAFoundation

// Child UIViewController

extension WAFoundationDSL where Target: UIViewController {
    
    public func addChild(_ childController: UIViewController, toView: UIView? = nil, frame: CGRect? = nil) {
        target.addChild(childController)
        if let toView = toView {
            toView.addSubview(childController.view)
        }
        if let frame = frame {
            childController.view.frame = frame
        }
        childController.didMove(toParent: target)
    }
    
    public func removeFromParent() {
        target.willMove(toParent: nil)
        target.view.removeFromSuperview()
        target.removeFromParent()
    }
}
