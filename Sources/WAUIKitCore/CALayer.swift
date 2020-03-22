//
//  CALayer.swift
//  WAUIKitCore iOS
//
//  Created by Panghu on 3/22/20.
//

import UIKit
import WAFoundation

// Layout

extension WAFoundationDSL where Target: CALayer {
    
    public var top: CGFloat {
        get { return target.frame.minY }
        set { target.frame.origin.y = newValue }
    }
    
    public var leading: CGFloat {
        get { return target.frame.minX }
        set { target.frame.origin.x = newValue }
    }
    
    public var bottom: CGFloat {
        get { return target.frame.maxY }
        set { target.frame.origin.y = newValue - target.frame.height }
    }
    
    public var trailing: CGFloat {
        get { return target.frame.maxX }
        set { target.frame.origin.x = newValue - target.frame.width }
    }
    
    public var width: CGFloat {
        get { return target.frame.width }
        set { target.frame.size.width = newValue }
    }
    
    public var height: CGFloat {
        get { return target.frame.height }
        set { target.frame.size.height = newValue }
    }
    
    public var xPosition: CGFloat {
        get { return target.position.x }
        set { target.position.x = newValue }
    }
    
    public var yPosition: CGFloat {
        get { return target.position.y }
        set { target.position.y = newValue }
    }
    
    public var zPosition: CGFloat {
        get { return target.zPosition }
        set { target.zPosition = newValue }
    }
    
    public var position: CGPoint {
        get { return target.position }
        set { target.position = newValue }
    }
    
    public var origin: CGPoint {
        get { return target.frame.origin }
        set { target.frame.origin = newValue }
    }
    
    public var size: CGSize {
        get { return target.frame.size }
        set { return target.frame.size = newValue }
    }
    
    public var bounds: CGRect {
        get { return target.bounds }
        set { return target.bounds = newValue }
    }
    
    public var frame: CGRect {
        get { return target.frame }
        set { return target.frame = newValue }
    }
}
