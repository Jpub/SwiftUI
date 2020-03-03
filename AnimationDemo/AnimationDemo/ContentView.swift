//
//  ContentView.swift
//  AnimationDemo
//
//  Created by Neil Smyth on 10/16/19.
//  Copyright © 2019 eBookFrenzy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
  @State private var isButtonVisible: Bool = true

    var body: some View {
        VStack {
            Toggle(isOn:$isButtonVisible.animation(
                                   .linear(duration: 2))) {
                Text("Show/Hide Button")
            }
            .padding()

            if isButtonVisible {
                Button(action: {}) {
                    Text("Example Button")
                    
                }
                .font(.largeTitle)
                .transition(.asymmetric(insertion: .scale, removal: .slide))
            }
        }

    }
}

extension AnyTransition {
    static var fadeAndMove: AnyTransition {
        AnyTransition.opacity.combined(with: .move(edge: .top))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
