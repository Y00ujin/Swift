//
//  MyWebview.swift
//  Swift_Image_tutorial
//
//  Created by 김유진 on 2020/09/04.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI
import WebKit

struct MyWebview : UIViewRepresentable {
    var urlToLoad: String
    
    // uiview 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        // unwrapping
        guard let url = URL(string:self.urlToLoad) else{
            return WKWebView()
        }
        
        // webview 인스턴스 생성
        let webview = WKWebView()
        
        // webview를 로드한다.
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    // update uiview
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
    }
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://www.naver.com")
    }
}
