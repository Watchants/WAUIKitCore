//
//  UITableView.swift
//  WAUIKitCore iOS
//
//  Created by Panghu on 3/22/20.
//

import UIKit
import WAFoundation

// Register & Dequeue

extension WAFoundationDSL where Target: UITableView {
    
    public func register(_ cell: UITableViewCell.Type) {
        target.register(cell, forCellReuseIdentifier:NSStringFromClass(cell))
    }
    
    public func register(_ view: UITableViewHeaderFooterView.Type) {
        target.register(view, forHeaderFooterViewReuseIdentifier:NSStringFromClass(view))
    }

    public func dequeue(_ cell: UITableViewCell.Type) -> UITableViewCell? {
        return target.dequeueReusableCell(withIdentifier: NSStringFromClass(cell))
    }
    
    public func dequeue(_ cell: UITableViewCell.Type, for indexPath: IndexPath) -> UITableViewCell {
        return target.dequeueReusableCell(withIdentifier: NSStringFromClass(cell), for: indexPath)
    }
    
    public func dequeue(view: UITableViewHeaderFooterView.Type) -> UITableViewHeaderFooterView? {
        return target.dequeueReusableHeaderFooterView(withIdentifier: NSStringFromClass(view))
    }
}
