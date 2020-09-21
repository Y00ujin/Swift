//
//  DateFormatter+Memo.swift
//  SwiftUI_Memo
//
//  Created by 김유진 on 2020/09/16.
//  Copyright © 2020 yujin. All rights reserved.
//

import Foundation

extension DateFormatter {
    static let memoDateFormatter: DateFormatter = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .none
        f.locale = Locale(identifier: "Yujin")
        return f
    }()
}


extension DateFormatter: ObservableObject {
    
}
