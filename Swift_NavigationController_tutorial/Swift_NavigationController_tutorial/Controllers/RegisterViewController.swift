//
//  RegisterViewController.swift
//  Swift_NavigationController_tutorial
//
//  Created by 김유진 on 2020/09/07.
//  Copyright © 2020 yujin. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var btnForLoginViewController: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 상단 네비게이션 바 부분을 숨긴다
        self.navigationController?.isNavigationBarHidden = true
    }

    // 버튼이 클릭 되었을 때
    @IBAction func onLoginViewControllerBtnClicked(_ sender: UIButton) {
        print("ok")
        self.navigationController?.popViewController(animated: true)
    }
    
}
