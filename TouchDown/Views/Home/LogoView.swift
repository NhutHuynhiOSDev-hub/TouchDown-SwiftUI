//
//  LogoView.swift
//  TouchDown
//
//  Created by Nhut Huynh Quang on 22/8/25.
//

import SwiftUI

struct LogoView: View {
    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
        } //: H-STACK
    }
}

// MARK: - PREVIEW
#Preview {
    LogoView()
        .padding()
}
