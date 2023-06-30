//
//  User.swift
//  ToDoList
//
//  Created by Pulkit Dhirana on 14/06/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
