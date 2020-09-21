//
//  MyProjectCard.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/04.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyProjectCard : View {
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View{
        VStack(alignment: .leading, spacing: 0){
            
            Rectangle().frame(height: 0)
            
            Text("TEAM PROJECT")
                .font(.system(size:23))
                .fontWeight(.black)
                .padding(.bottom,5)
            Text("10 AM - 11 AM")
                .foregroundColor(.secondary)
                .padding(.bottom,10)
            HStack{
                Image("user1")
                    .resizable()
                    .frame(width:50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(Color.red)
                )
                Image("user2")
                    .resizable()
                    .frame(width:50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(Color.orange)
                )
                Image("user3")
                    .resizable()
                    .frame(width:50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(Color.green)
                )

                Spacer()
                
                Button(action: {
                    print("확인 버튼이 클릭되었다.")
                    
                    self.shouldShowAlert = true
                }){
                    Text("완료")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width:80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("완료하셨습니다"))
                }
            }
        }
    .padding(30)
    .background(Color.yellow)
    .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
