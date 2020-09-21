//
//  MainViewController.swift
//  Swift_NavigationController_tutorial
//
//  Created by 김유진 on 2020/09/08.
//  Copyright © 2020 yujin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // 제목
    var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "MAIN"
        label.textAlignment = .center
        label.font
    }
    
    // 뷰가 생성되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
