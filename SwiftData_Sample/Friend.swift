//
//  Friend.swift
//  SwiftData_Sample
//
//  Created by Ibrahim Hosseini on 4/1/24.
//

import Foundation
import SwiftData

@Model
final class Friend {
    let firstName: String
    let lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
