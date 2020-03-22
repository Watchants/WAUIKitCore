//
//  ViewController.swift
//  Examples iOS
//
//  Created by Panghu on 3/22/20.
//

import UIKit
import WAUIKitCore
import WAFoundation

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "WAUIKitCore"
        tableView.wa.register(UITableViewCell.self)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.wa.dequeue(UITableViewCell.self, for: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.textLabel?.text = "\(indexPath.item)"
    }
}
