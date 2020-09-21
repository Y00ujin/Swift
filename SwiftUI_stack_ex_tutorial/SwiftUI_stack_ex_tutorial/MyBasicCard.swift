//
//  MyBasicCard.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/04.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyBasicCard : View {
    var body: some View{
        HStack(spacing: 20){
            
            Image(systemName: "pencil.circle")
                .font(.system(size: 50))
            
            VStack(alignment: .leading, spacing: 0){
                
                Divider().opacity(0)
                
                Text("STUDY")
                    .fontWeight(.bold)
                    .font(.system(size:23))
                Text("8 AM - 10 AM")
                    .foregroundColor(.secondary)
            }

        }
        .padding(.all, 20)
        .background(Color.yellow)
        .cornerRadius(20)
        }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
