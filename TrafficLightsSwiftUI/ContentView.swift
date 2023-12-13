//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Лилия Андреева on 12.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var opacityRed = 0.3
    @State private var opacityYellow = 0.3
    @State private var opacityGreen = 0.3
    private let width: CGFloat = 150
  
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack {
                CircleSwiftUIView(color: .red, width: width).opacity(opacityRed)
                    .padding()
                CircleSwiftUIView(color: .orange, width: width).opacity(opacityYellow)
                    .padding()
                CircleSwiftUIView(color: .green, width: width).opacity(opacityGreen)
                    .padding()
                Spacer()
                
                Button (action: {
                    changeLights()
                },
                        label: {
                    if  (opacityRed == 1.0 ||
                         opacityGreen == 1.0 ||
                         opacityYellow == 1.0) {
                        Text("Next")
                    } else {
                        Text("Start")
                    }
                }
                )
                .foregroundStyle(.white)
                .font(.largeTitle)
                .bold()
                .padding()
                .background(.blue)
                .cornerRadius(20)
            } .padding(.bottom, 40)
        }
    }
    
    private func changeLights() {
        if opacityRed < 1.0 && opacityYellow < 1.0 && opacityGreen < 1.0 {
            opacityRed = 1.0
        } else if opacityRed == 1.0 {
            opacityRed = 0.3
            opacityYellow = 1.0
        } else if opacityYellow == 1.0 {
            opacityYellow = 0.3
            opacityGreen = 1.0
        } else if opacityGreen == 1.0 {
            opacityGreen = 0.3
            opacityRed = 1.0
        }
    }
}

#Preview {
        ContentView()
}
