//
//  ViewController.swift
//  Swift_fundemental_tutorial
//
//  Created by 김유진 on 2020/09/07.
//  Copyright © 2020 yujin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var titleLabel: UILabel = {
       
        let label = UILabel()
        label.text = "hello world"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .white
        
        return label
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .red
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // X Y 축 가운데 두기
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }


}

