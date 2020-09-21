//
//  MyListAddView.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/08.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyListAddView: View{
    
    @State var AddListCount: Int = 0
    
    @State var isNavigationBarHidden: Bool = false
    
    @State var icon = ""
    @State var title = ""
    @State var start = ""
    @State var end = ""
    @State var bgColor : Color
    
    var body: some  View {
        NavigationView{
            VStack{
                
                Text("ADD LIST")
                    .font(.system(size:25))
                    .fontWeight(.semibold)
                
                Form{

                    TextField("이름", text: $title)
                        .keyboardType(.default)
                    TextField("시작시간 ex)  10 PM", text: $start)
                        .keyboardType(.default)
                    TextField("끝시간", text: $end)
                        .keyboardType(.default)
                    
                    NavigationLink(destination:
                        ContentView()
                    ){
                        Button(action: {
                            self.AddListCount = 1
                        }){
                            Text("ADD")
                                .frame(width: 300,height: 30)
                                .background(Color.blue)
                                .cornerRadius(7)
                                .font(.system(size:20))
                                .foregroundColor(.white)
                        }
                    }
                }
                

                Text("추가되는 일정 미리 보기")
                MyCard(icon: "checkmark", title: title, start: start, end: end, bgColor: Color.green)
            }
        }


        

        
//        NavigationLink(destination:ContentView()){
//                Image(systemName: "checkmark")
//                .font(.system(size:50))
//                .foregroundColor(.red)
//        }

    }
}

struct MyListAddView_Previews: PreviewProvider {
    static var previews: some View {
        MyListAddView(bgColor: Color.red)
    }
}
