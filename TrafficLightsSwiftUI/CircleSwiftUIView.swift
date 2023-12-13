//
//  CircleSwiftUIView.swift
//  TrafficLightsSwiftUI
//
//  Created by Лилия Андреева on 12.12.2023.
//

import SwiftUI

struct CircleSwiftUIView: View {
    let color: Color
    let width: CGFloat
    
    var body: some View {
        
        Circle()
            .foregroundStyle(color)
            .frame(width: width)
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 4)
            )
            .shadow(color: .white, radius: 10, x: 10, y: 5)
    }
}

#Preview {
    CircleSwiftUIView(color: .red, width: 150)
}
