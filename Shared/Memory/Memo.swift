//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by PNT001 on 2022/09/09.
//

import Foundation
import SwiftUI
//Identifiable 데이터를 리스트에 쉽게 바인딩하기 위한 것
//ObservableObject 메모를 편집할 때, 뷰를 자동으로 업데이트 하기 위한 것
class Memo: Identifiable, ObservableObject {
    let id: UUID
    @Published var content: String //새로운 값을 저장할 때마다 바인딩 되어있는 UI가 자동으로 업데이트 됨
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}

