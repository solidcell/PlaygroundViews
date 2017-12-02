//
//  ViewController.swift
//  PlaygroundViews
//
//  Created by Jesse Farless on 12/2/17.
//  Copyright © 2017 solidcell. All rights reserved.
//

import UIKit

public class ViewController : UIViewController {
    public override func loadView() {
        let view = UIView()
        view.backgroundColor = .lightGray

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black

        view.addSubview(label)
        self.view = view
    }
}

