//
//  ViewController.swift
//  AutoLayoutAnchorExample
//
//  Created by STUDYRESEARCH on 15/09/20.
//  Copyright © 2020 STUDYRESEARCH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     var label1 = UILabel()
     var label2 = UILabel()
     var label3 = UILabel()
     var label4 = UILabel()
    var labelCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(label1)
        self.view.addSubview(label2)
        self.view.addSubview(label3)
        self.view.addSubview(label4)
        
        var previous: UILabel?
            var i = 1
        for label in [label1, label2, label3, label4] {
            label.translatesAutoresizingMaskIntoConstraints = false
            label.leftAnchor.constraint(equalTo: self.view.leftAnchor,constant: 10).isActive = true
            
            label.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9).isActive = true
            label.heightAnchor.constraint(equalToConstant: 88).isActive = true

            if let previous = previous {
                // we have a previous label – create a height constraint
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            }
            if i % 2 == 0{
                label.backgroundColor = .orange
            }else{
            label.backgroundColor = .brown
            }
            // set the previous label to be the current one, for the next loop iteration
            previous = label
            
            i += 1
        }
        
        
    }


}

