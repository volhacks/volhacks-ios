//
//  ScheduleViewController.swift
//  VolHacks
//
//  Created by Kyle Bashour on 7/29/16.
//  Copyright © 2016 Kyle Bashour. All rights reserved.
//

import UIKit

class ScheduleViewController: UITableViewController {

    let headerView: UIView = {

        let label = UILabel()
        let volAttributes: [String: AnyObject] = [
            NSForegroundColorAttributeName: Theme.orange,
            NSFontAttributeName: R.font.gothamBook(size: 22)!
        ]
        let hacksAttributes: [String: AnyObject] = [
            NSForegroundColorAttributeName: Theme.lightBlue,
            NSFontAttributeName: R.font.gothamBlack(size: 22)!
        ]
        let volhacks = NSMutableAttributedString(string: "VOL", attributes: volAttributes)

        volhacks.appendAttributedString(NSAttributedString(string: "HACKS", attributes: hacksAttributes))
        label.attributedText = volhacks
        label.sizeToFit()

        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.titleView = headerView

        setUpTableView()
    }

    func setUpTableView() {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 50
        tableView.tableFooterView = UIView(frame: CGRect.zero)
    }
}
