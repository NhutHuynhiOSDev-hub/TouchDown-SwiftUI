 //
//  ContentView.swift
//  TouchDown
//
//  Created by Nhut Huynh Quang on 22/8/25.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: .white.opacity(0.05) ,radius: 5, x: 0.0, y: 5)
                
                Spacer()
                
                FooterView()
                    .padding(.horizontal)
            }//: V-STACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: Z-STACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
