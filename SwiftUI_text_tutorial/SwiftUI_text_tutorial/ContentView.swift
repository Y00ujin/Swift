//
//  ContentView.swift
//  SwiftUI_text_tutorial
//
//  Created by 김유진 on 2020/09/03.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat:DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }()
    
    var today = Date() // 오늘 날짜 할당
    
    var body: some View {
        VStack{
             Text("오늘은 \(today,formatter: ContentView.dateFormat)입니다")
                .font(.system(.body, design: .rounded))
                .padding(10)
                .background(Color.gray)
                .cornerRadius(20)
                .padding(.all,10)

            
            Text("You want many things out of life, and you know you're going to have to work to achieve them.")
                .font(.system(.body, design: .rounded))
                .foregroundColor(Color.white)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .lineSpacing(10) // 줄 사이의 간격
                .padding(.all,20) // 양 옆에 padding넣기 -> horigental
                .background(Color.black)
                .cornerRadius(20)
                .padding(.all,10)
                .background(Color.gray)
                .cornerRadius(30)
                .padding(.all,10)
                
            
            Text("Although it's easier to sit back and wait for opportunities to find you,the best ones come when you pursue them.")
                .tracking(2) // 글자 사이의 간격
                .font(.system(.body, design: .rounded))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .shadow(color:Color.black, radius: 2, x: 0, y: 7)
                .padding(.all,20) // 양 옆에 padding넣기 -> horigental
                .background(Color.gray)
                .cornerRadius(20)
                .padding(.all,10)
                .background(Color.black)
                .cornerRadius(30)
                .padding(.all,10)
            
           

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
