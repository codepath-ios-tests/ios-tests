//
//  ViewController.swift
//  tests
//
//  Created by Tejen Hasmukh Patel on 3/19/16.
//  Copyright © 2016 Tejen Patel / Lisa Maldonado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self;
        tableView.dataSource = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews();
        
        // get existing tableHeaderView into a variable
        let headerView = tableView.tableHeaderView!;
        
        headerView.setNeedsLayout();
        headerView.layoutIfNeeded();
        
        // modify the tableHeaderView (dynamic height)
        let height = headerView.systemLayoutSizeFittingSize(UILayoutFittingCompressedSize).height;
        var frame = headerView.frame;
        frame.size.height = height;
        headerView.frame = frame;
        
        // replace existing tableHeaderView with our modified version
        tableView.tableHeaderView = headerView;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier("PostCell")!;
    }
}

