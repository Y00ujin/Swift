//
//  MemoCell.swift
//  SwiftUI_Memo
//
//  Created by 김유진 on 2020/09/16.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MemoCell: View {
    
    @ObservedObject var memo: Memo
    @EnvironmentObject var formatter: DateFormatter
    
    var body: some View {
        VStack(alignment: .leading) { // 왼쪽 정렬
            Text(memo.content)
                .font(.body)
                .lineLimit(1)
            
            Text("\(memo.insertDate, formatter: self.formatter)")
                .font(.caption)
                .foregroundColor(Color(UIColor.secondaryLabel))
        }
    }
}

struct MemoCell_Previews: PreviewProvider {
    static var previews: some View {
        MemoCell(memo: Memo(content: "Test"))
            .environmentObject(DateFormatter.memoDateFormatter)
    }
}
