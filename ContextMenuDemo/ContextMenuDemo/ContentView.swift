//
//  ContentView.swift
//  ContextMenuDemo
//
//  Created by Neil Smyth on 10/15/19.
//  Copyright © 2019 eBookFrenzy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var foregroundColor: Color = Color.black
    @State private var backgroundColor: Color = Color.white

    var body: some View {
        Text("Hello World")
        .font(.largeTitle)
        .padding()
        .foregroundColor(foregroundColor)
        .background(backgroundColor)
        .contextMenu {
             Button(action: {
                 self.foregroundColor = .black
                 self.backgroundColor = .white
             }) {
                 Text("Normal Colors")
                    .font(.caption)
                 Image(systemName: "paintbrush")
             }
            
             Button(action: {
                 self.foregroundColor = .white
                 self.backgroundColor = .black
             }) {
                 Text("Inverted Colors")
                 Image(systemName: "paintbrush.fill")
             }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
