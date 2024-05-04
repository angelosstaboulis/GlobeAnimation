//
//  ContentView.swift
//  GlobeAnimation
//
//  Created by Angelos Staboulis on 4/5/24.
//

import SwiftUI

struct ContentView: View {
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var degrees = 0
    var body: some View {
        VStack {
            Image("sky")
            .ignoresSafeArea()
            .overlay {
                Image("globeNew")
                    .resizable()
                    .frame(width:300,height:295)
                    .rotationEffect(.degrees(Double(degrees)))
                    .onReceive(timer, perform: { _ in
                        if degrees <= 360{
                            degrees = degrees + 30
                        }else{
                            degrees = 0
                        }
                    })
            }
          
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
