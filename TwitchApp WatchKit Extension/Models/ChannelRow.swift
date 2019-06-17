//
//  ChannelRow.swift
//  TwitchApp WatchKit Extension
//
//  Created by Gregory Ganley on 2019-06-10.
//  Copyright © 2019 Gregory Ganley. All rights reserved.
//

import SwiftUI

struct ChannelRow : View {
    var channel: TwitchChannel
    var body: some View {
        HStack(alignment: .center) {
            Image(channel.name).cornerRadius(10)
            
            Text(channel.name)
                .lineLimit(nil)
            
            Spacer()
        }
    }
}


#if DEBUG
struct ChannelRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ChannelRow(channel: channelData[0])
            ChannelRow(channel: channelData[1])
        }
    }
}
#endif
