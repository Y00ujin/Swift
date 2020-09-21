//
//  MyVstack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by 김유진 on 2020/09/04.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyVstack : View{
    var body: some View{
        VStack(alignment: .trailing, spacing: 50){ // spacing : 줄 간격

            Text("hello")
                .font(.system(size:30))
                .fontWeight(.heavy)
            
            Divider()
                .opacity(0)
            
            Rectangle() // 기본값 -> 전체 채우기
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
            Rectangle() // 기본값 -> 전체 채우기
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            Rectangle() // 기본값 -> 전체 채우기
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
            
            Spacer() // 위치한 곳에서 반대로 다 밀어버리기
        }
        .frame(width:300)
        .background(Color.green)
        // .edgesIgnoringSafeArea(.all)
    }
}

struct MyVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyVstack()
    }
}
