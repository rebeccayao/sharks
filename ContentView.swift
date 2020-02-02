//
//  ContentView.swift
//  babysharksings
//
//  Created by Rebecca Yao on 2/1/20.
//  Copyright © 2020 Rebecca Yao. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        Button(action: {
            let list = ["Baybee", "Mahmmy", "Dahddy", "Grandma", "Grandpa"]
            var song = ""
            for shark in list {
                for _ in 1...3 {
                    song += "\(shark) shark dooo dooooo dooo dooo doo  dooo, "
                }
                song += "\(shark) shark!, "

            }
           let utterance = AVSpeechUtterance(string: song)
            utterance.voice = AVSpeechSynthesisVoice(language:"CN")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)

        }) {
            Text("Click here to enjoy the most beloved song by all american children and adults alike")
        }
       
    }
}
//[AVSpeechSynthesisVoice 0x608000009010] Language: zh-CN, Name: Ting-Ting, Quality: Default [com.apple.ttsbundle.Ting-Ting-compact]


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
