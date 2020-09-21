//
//  MyEnglishWord.swift
//  SwiftUI_EnglishWordDictionary_Practice
//
//  Created by 김유진 on 2020/09/09.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct FittingFontSizeModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.system(size: 100))
      .minimumScaleFactor(0.001)
  }
}

struct MyEnglishWordCard : View {
    
    @State var icon : String = ""
    @State var mean : String = ""
    @State var title : String = ""
    @State var examplesentence: String = ""
    
    @State var isChecked : Bool = false
    
    var body: some View{
        HStack(spacing: 20){
            // 체크 이미지
            Image(systemName: icon)
                .font(.system(size: 30))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0){
                
                Divider().opacity(0)
                HStack{
                    // 체크박스 구성
                        Button(action: {
                            self.isChecked = true
                        }){
                            HStack{
                            Image(systemName: isChecked ? "checkmark.square": "square")
                                .foregroundColor(.white)
                                .font(.system(size:15))
                                .padding(.trailing,7)

                        }

                    }
                    // 영어 단어, 뜻
                    Text(title)
                        .fontWeight(.bold)
                        .font(.system(size:19))
                        .foregroundColor(.white)
                        .padding(.trailing, 10)
//                        .modifier(FittingFontSizeModifier())
//                        .frame(width: 170, height: 45)
                    Text(mean)
                        .fontWeight(.bold)
                        .font(.system(size:19))
                        .foregroundColor(.white)
//                        .modifier(FittingFontSizeModifier())
//                        .frame(width: 90, height: 45)
                }
                .padding(.bottom, 6)
                // 예문
                Text("\(examplesentence)")
                    .foregroundColor(.primary)
            }

        }
        // 배경 화면 구성
        .padding(10)
        .padding(.horizontal,10)
        .background(Color.gray)
        .cornerRadius(15)
        }
}

struct MyEnglishWordCard_Previews: PreviewProvider {
    static var previews: some View {
        MyEnglishWordCard(icon: "checkmark", mean: "종합적인", title: "Comprehensive", examplesentence: "Yesterday, I ate apple.")
    }
}

