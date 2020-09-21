//
//  DetailSene.swift
//  SwiftUI_Memo
//
//  Created by 김유진 on 2020/09/16.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct DetailSene: View {
    @ObservedObject var memo: Memo
    
    @EnvironmentObject var store: MemoStore
    @EnvironmentObject var formatter: DateFormatter
    
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    HStack {
                        Text(self.memo.content)
                            .padding()
                        
                        Spacer()
                    }
                    
                    Text("\(self.memo.insertDate, formatter: formatter)")
                    .padding()
                        .font(.footnote)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                }
            }
        }
    .navigationBarTitle("메모 보기")
    }
}

struct DetailSene_Previews: PreviewProvider {
    static var previews: some View {
        DetailSene(memo: Memo(content: "SwiftUI"))
        .environmentObject(MemoStore())
            .environmentObject(DateFormatter.memoDateFormatter)
    }
}
