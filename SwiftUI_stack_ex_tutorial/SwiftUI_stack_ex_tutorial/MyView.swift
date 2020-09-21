//
//  MyView.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/06.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyView: View{
    var title: String
    
    var bgColor: Color
    
    var body: some View{
        ZStack{
            
            bgColor
                .edgesIgnoringSafeArea(.all)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
        }.animation(.none) // 애니메이션을 적용 하지 않는다.
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "title", bgColor:Color.green)
    }
}
