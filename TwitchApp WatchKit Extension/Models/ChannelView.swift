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
    
    var body: some View {
        // This is where you should try and stream? or maybe action on a button.
        VStack {
            Text(channel.name)
        }
    }
}

#if DEBUG
struct ChannelView_Previews : PreviewProvider {
    static var previews: some View {
        ChannelView(channel: channelData[1])
    }
}
#endif
