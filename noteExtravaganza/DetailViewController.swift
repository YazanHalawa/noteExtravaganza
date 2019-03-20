//
//  DetailViewController.swift
//  noteExtravaganza
//
//  Created by Yazan Halawa on 3/10/19.
//  Copyright © 2019 Yukul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let entryView = detailDescriptionLabel {
                label.text = detail.timestamp!.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

