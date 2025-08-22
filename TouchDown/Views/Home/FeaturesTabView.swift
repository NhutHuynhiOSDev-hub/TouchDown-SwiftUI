//
//  FeaturesTabView.swift
//  TouchDown
//
//  Created by Nhut Huynh Quang on 22/8/25.
//

import SwiftUI

struct FeaturesTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }//: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    FeaturesTabView()
        .background(.gray)
}
