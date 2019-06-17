//
//  Channel.swift
//  TwitchApp WatchKit Extension
//
//  Created by Gregory Ganley on 2019-06-07.
//  Copyright © 2019 Gregory Ganley. All rights reserved.
//

import SwiftUI

struct TwitchChannel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
}
