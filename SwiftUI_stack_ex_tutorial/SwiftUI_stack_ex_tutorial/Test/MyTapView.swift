//
//  MyTapView.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/06.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyTabView : View{
    var body: some View{
        
        TabView{
            // 보여질 화면
            MyView(title: "title1", bgColor:Color.green)
                .tabItem{
                    Image(systemName: "airplane")
                    Text("1번")
            }
            .tag(0)
            MyView(title: "title2", bgColor:Color.orange)
                .tabItem{
                    Image(systemName: "airplane")
                    Text("2번")
            }
            .tag(1)
            MyView(title: "title3", bgColor:Color.yellow)
                .tabItem{
                    Image(systemName: "airplane")
                    Text("3번")
            }
            .tag(2)
        }
        
    }
}

struct MyTapView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
