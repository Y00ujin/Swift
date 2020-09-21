//
//  MyCard.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/04.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyCard : View {
    
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    var body: some View{
        HStack(spacing: 20){
            
            Image(systemName: icon)
                .font(.system(size: 50))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0){
                
                Divider().opacity(0)
                
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size:23))
                    .foregroundColor(.white)
                Text("\(start) - \(end)")
                    .foregroundColor(.secondary)
            }

        }
        .padding(.all, 20)
        .background(bgColor)
        .cornerRadius(20)
        }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "book.fill", title: "READING A BOOK", start: "10 PM", end: "12 PM", bgColor: Color.green)
    }
}
