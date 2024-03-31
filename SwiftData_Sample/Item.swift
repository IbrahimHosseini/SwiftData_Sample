//
//  Item.swift
//  SwiftData_Sample
//
//  Created by Ibrahim Hosseini on 4/1/24.
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
