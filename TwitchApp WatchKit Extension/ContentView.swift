//
//  ContentView.swift
//  TwitchApp WatchKit Extension
//
//  Created by Gregory Ganley on 2019-06-05.
//  Copyright © 2019 Gregory Ganley. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ContentView : View {
    @State private var session = AVAudioSession.sharedInstance()

    var body: some View {
        List(channelData) { channel in
            NavigationButton(destination: ChannelView(channel: channel, session: self.$session)) {
                ChannelRow(channel: channel)
                }
        }
        .listStyle(.carousel)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
