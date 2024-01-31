//
//  Item.swift
//  Navigation, List, Modal, Stacks
//
//  Created by User on 31/01/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
