//
//  CirCleImageView.swift
//  Swift_Image_tutorial
//
//  Created by 김유진 on 2020/09/04.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct CircleImageView : View{
    var body: some View{
        Image("cat")
        .resizable() // 화면에 맞추기
        .aspectRatio(contentMode: .fill) // 비율에 맞게
        .frame(width: 200, height: 200)
        .clipShape(Circle())
        .shadow(color: .black, radius: 10, x: 0, y: 10)
        .overlay(Circle().foregroundColor(.black).opacity(0.2)) // 투명도 조절
        .overlay(Circle().stroke(Color.yellow, lineWidth: 10).padding(15)) // 윤곽선
        .overlay(Circle().stroke(Color.orange, lineWidth: 10))
        .overlay(
            Text("CAT")
                .foregroundColor(.white)
                .font(.system(size:70))
                .fontWeight(.bold)
        )
        //.clipped() // frame만큼 자르기
        //.edgesIgnoringSafeArea(.all)
    }
}

struct CirCleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
