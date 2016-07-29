//
//  FAQViewController.swift
//  VolHacks
//
//  Created by Kyle Bashour on 7/29/16.
//  Copyright © 2016 Kyle Bashour. All rights reserved.
//

import UIKit

class FAQViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTableView()
    }

    func setUpTableView() {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 150
        tableView.tableFooterView = UIView(frame: CGRect.zero)
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(R.reuseIdentifier.fAQCell)!
        return cell
    }
}
