 //
//  ContentView.swift
//  TouchDown
//
//  Created by Nhut Huynh Quang on 22/8/25.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    private let windownScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, windownScene?.keyWindow?.safeAreaInsets.top ?? 0)
                    .background(.white)
                    .shadow(color: .white.opacity(0.05) ,radius: 5, x: 0.0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        
                        FeaturesTabView()
                            .padding(.vertical, 20)
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                }//: SCROLL VIEW
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
