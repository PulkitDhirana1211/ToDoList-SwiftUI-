//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Pulkit Dhirana on 14/06/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
