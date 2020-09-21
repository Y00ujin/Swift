//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 김유진 on 2020/09/02.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // @State -> 값의 변화를 감지하고 뷰에 적용시킴
    @State var isActivated:Bool = false
    
    
    
    var body: some View {
        NavigationView{
            VStack{
                    HStack{
                        MyVstackView(isActivated: $isActivated)
                        MyVstackView(isActivated: $isActivated)
                        MyVstackView(isActivated: $isActivated)
                    }
                    .padding(isActivated ? 50 : 10)
                    .background(isActivated ? Color.yellow : Color.black)
                    .background(Color.black)
                    .onTapGesture{
                        withAnimation{
                            // toggle -> bool의 값을 반대로 바꿔줌
                            self.isActivated.toggle()
                        }
                    }
                    
                    // 네비게이션 버튼
                    NavigationLink(destination:MyTextView(isActivated: $isActivated)  ){
                        Text("NEXT")
                            
                            .font(.system(size:20))
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.gray)
                            .foregroundColor(Color.black)
                            .cornerRadius(15)
                    }.padding(.top,50)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
