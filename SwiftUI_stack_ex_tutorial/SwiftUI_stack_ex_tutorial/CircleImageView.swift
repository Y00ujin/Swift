//
//  CircleImageView.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/05.
//  Copyright © 2020 yujin. All rights reserved.
//


import SwiftUI

struct CircleImageView : View{
    var body: some View{
        Image(systemName: "person.circle.fill")
        .resizable() // 화면에 맞추기
        .aspectRatio(contentMode: .fill) // 비율에 맞게
        .frame(width: 200, height: 200)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.yellow, lineWidth: 15))

        //.clipped() // frame만큼 자르기
        //.edgesIgnoringSafeArea(.all)
    }
}

struct CirCleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}

