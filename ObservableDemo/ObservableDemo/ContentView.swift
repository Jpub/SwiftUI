//
//  ContentView.swift
//  ObservableDemo
//
//  Created by Neil Smyth on 10/15/19.
//  Copyright © 2019 eBookFrenzy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject  var timerData: TimerData
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Button(action: resetCount) {
                    Text("Reset Counter")
                }

                NavigationLink(destination:
                           SecondView(timerData: timerData)) {
                    Text("Next Screen")
                }
                .padding()

            }
        }
    }
    
    func resetCount() {
        timerData.resetCount()
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(TimerData())
    }
}
