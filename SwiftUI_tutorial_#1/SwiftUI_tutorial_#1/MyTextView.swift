//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 김유진 on 2020/09/02.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyTextView : View{
    
    // 데이터를 연동시킨다
    @Binding var isActivated: Bool;
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)){ // 불에 대한 기본값을 false
        _isActivated = isActivated
    }
    
    @State private var index:Int = 0

    private let backgroundColors = [
        Color.red,
        Color.orange,
        Color.yellow,
        Color.green,
        Color.blue,
        Color.purple
    ]
    
    var body:some View{
        VStack{
            Spacer() // 공간 넣기
            Text("CLICK! \(self.index+1)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth:0,maxWidth: .infinity,minHeight: 0,maxHeight: 100) //
            Text("활성화 : \(String(isActivated))")
            .font(.system(size: 30))
            .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
                .background(Color.black)

            Spacer()
        }.background(backgroundColors[index])
            .edgesIgnoringSafeArea(.all) // 위 아래 빈 칸도 색 넣기
            .onTapGesture{
                // 배열의 끝에 도달했을 때 다시 0으로 초기화 시켜주는 코드
                if(self.index==self.backgroundColors.count-1){
                    self.index = 0
                }
                else {
                    self.index += 1
                }
                
        }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
