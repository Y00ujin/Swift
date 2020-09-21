//
//  Memo.swift
//  SwiftUI_Memo
//
//  Created by 김유진 on 2020/09/15.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

// Identifiable ? 데이터 목록을 테이블뷰나 컬렉션뷰에 쉽게 바인딩할 수 있다
// ObservableObject ? 반응형 UI구현

class Memo: Identifiable, ObservableObject {
    let id: UUID
    @Published var content: String
    let insertDate: Date // 메모가 생성된 날짜
    
    init(id: UUID = UUID(), content: String, insertDate: Date = Date()) {
        self.id = id
        self.content = content
        self.insertDate = insertDate
    }
}

extension Memo: Equatable {
    static func == (lhs: Memo, rhs: Memo) -> Bool {
        return lhs.id == rhs.id
    }
}
