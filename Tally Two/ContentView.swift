//
//  ContentView.swift
//  Tally Two
//
//  Created by Luke Drushell on 11/20/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    
    let dingNoise: SystemSoundID =  1103
    @State var score1 = 0
    @State var score2 = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    score1 += 1
                    AudioServicesPlaySystemSound(dingNoise)
                } label: {
                    Color.red
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.48, alignment: .center)
                        .overlay(
                            Text("\(score1)")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                        )
                }
                Button {
                    score2 += 1
                    AudioServicesPlaySystemSound(dingNoise)
                } label: {
                    Color.blue
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.52, alignment: .center)
                        .overlay(
                            Text("\(score2)")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                        )
                }
            } .edgesIgnoringSafeArea(.top)
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing, content: {
                        Button {
                            score1 = 0
                            score2 = 0
                        } label: {
                            Image(systemName: "gobackward")
                                .foregroundColor(.white)
                                .font(Font.headline.weight(.heavy))
                            
                        } .padding()
                    })
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
