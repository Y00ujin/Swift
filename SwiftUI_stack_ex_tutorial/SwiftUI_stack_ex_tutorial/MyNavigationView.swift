//
//  MyNavigationView.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/05.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyNavigationView: View{
    var body: some View{
        Text("MyNavigationView")
            .navigationBarTitle("My Profile", displayMode: .large)
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
