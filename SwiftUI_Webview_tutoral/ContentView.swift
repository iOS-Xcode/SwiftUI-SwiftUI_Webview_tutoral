//
//  ContentView.swift
//  SwiftUI_Webview_tutoral
//
//  Created by Seokhyun Kim on 2020-10-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        MyWebview(urlToLoad: "https://www.naver.com")
        //네비를 쓰기 위한 네비뷰로 감싼다.
        NavigationView {
            HStack {
                NavigationLink(destination: MyWebview(urlToLoad: "https://www.naver.com")
                                .edgesIgnoringSafeArea(.all)
                ){
                    Text("네이버")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebview(urlToLoad: "https://www.daum.net")
                                .edgesIgnoringSafeArea(.all)
                ){
                    Text("다음")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebview(urlToLoad: "https://www.google.com")
                                .edgesIgnoringSafeArea(.all)
                ){
                    Text("구글")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
