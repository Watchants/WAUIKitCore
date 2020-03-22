//
//  UIGraphics.swift
//  WAUIKitCore iOS
//
//  Created by Panghu on 3/22/20.
//

import UIKit
import WAFoundation

// UIImage context

extension CGContext: WAFoundationCompatible { }

extension WAFoundationDSL where Target: CGContext {
    
    static func beginImage(_ size: CGSize, _ opaque: Bool = true, _ scale: CGFloat = 0, _ excute: (CGContext) -> Void) {

        UIGraphicsBeginImageContextWithOptions(size, opaque, scale == 0 ? UIScreen.main.scale : scale)
        
        if let context = UIGraphicsGetCurrentContext() {
            excute(context)
        }
        UIGraphicsEndImageContext();
    }
}
