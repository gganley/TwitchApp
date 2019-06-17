//
//  ChannelView.swift
//  TwitchApp WatchKit Extension
//
//  Created by Gregory Ganley on 2019-06-10.
//  Copyright © 2019 Gregory Ganley. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ChannelView : View {
    var channel: TwitchChannel
    @Binding var session: AVAudioSession
    
    var body: some View {
        // This is where you should try and stream? or maybe action on a button.
        VStack {
            Text(channel.name)
            Button(action: {
                do {
                    try self.session.setCategory(.playback, mode: .default, policy: .longFormAudio, options: [])
                } catch let error {
                    fatalError("*** Unable to set up the audio session: \(error.localizedDescription) ***")
                }
                var player: AVQueuePlayer
                self.session.activate(options: []) {(succ, err) in
                    
                    guard err == nil else {
                        fatalError("*** error as occured \(err!.localizedDescription)")
                    }
                    
                    if !succ {
                        print("Somethin went dearly wrong when trying to activate the session")
                    }
                }
                
                
                
                player = AVQueuePlayer(url: URL(string: "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_16x9/bipbop_16x9_variant.m3u8")!)
                
                print("hello")
                print(player.debugDescription)
                print(self.session.currentRoute)
                print(player.items())
                print(player.items()[0].errorLog() ?? nil)
                print(player.items()[0].timebase ?? nil)
                print(player.reasonForWaitingToPlay ?? nil)
                player.playImmediately(atRate: 1.0)
                
            }) {
                Text("Something or other")
            }
        }
    }
}

//#if DEBUG
//struct ChannelView_Previews : PreviewProvider {
//    @State var session = AVAudioSession.sharedInstance()
//    static var previews: some View {
//        ChannelView(channel: channelData[1], session: $session)
//    }
//}
//#endif
