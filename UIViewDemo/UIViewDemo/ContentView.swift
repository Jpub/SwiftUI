//
//  ContentView.swift
//  UIViewDemo
//
//  Created by Neil Smyth on 10/16/19.
//  Copyright © 2019 eBookFrenzy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MyScrollView(text: "UIView in SwiftUI")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
