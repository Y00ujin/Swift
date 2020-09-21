//
//  ViewController.swift
//  Swift_NavigationController_tutorial
//
//  Created by 김유진 on 2020/09/06.
//  Copyright © 2020 yujin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // 뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 상단 네비게이션 바 부분을 숨긴다
        self.navigationController?.isNavigationBarHidden = true
    }


}

