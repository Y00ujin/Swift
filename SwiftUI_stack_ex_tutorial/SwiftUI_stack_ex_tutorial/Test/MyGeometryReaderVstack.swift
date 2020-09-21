//
//  MyGeometryReaderVstack.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/06.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

// 자료형 만들기
enum Index{
    case one, two, three
}

struct MyGeometryReaderVStack : View{
    
    // 처음 실행했을 때 1번이 선택되어 있게 하기
    @State var index : Index = .one
    
    var body: some View{
        
        GeometryReader{ geometry in
            VStack{
                
                Button(action:{
                    // 버튼이 클릭되었을때의 코드
                    withAnimation{
                        
                        self.index = .one
                    }
                    print("1 click")
                }){
                    // 버튼의 생김새
                    Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: 100, height: geometry.size.height / 3)
                    .padding(.horizontal, self.index == .one ? 50: 0)
                    .foregroundColor(.white)
                    .background(Color.red)
                }
                Button(action:{
                    // 버튼이 클릭되었을때의 코드
                    withAnimation{
                        
                        self.index = .two
                    }
                    print("2 click")
                }){
                    // 버튼의 생김새
                    Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: 100, height: geometry.size.height / 3)
                    .padding(.horizontal, self.index == .two ? 50: 0)
                    .foregroundColor(.white)
                    .background(Color.blue)
                }
                Button(action:{
                    // 버튼이 클릭되었을때의 코드
                    withAnimation{
                        
                        self.index = .three
                    }
                    print("3 click")
                }){
                    // 버튼의 생김새
                    Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: 100, height: geometry.size.height / 3)
                    .padding(.horizontal, self.index == .three ? 50: 0)

                    .foregroundColor(.white)
                    .background(Color.green)
                }
            }
        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MyGeometryReaderVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVStack()
        
    }
}
