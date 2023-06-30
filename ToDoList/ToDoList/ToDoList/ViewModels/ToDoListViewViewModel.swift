//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Pulkit Dhirana on 14/06/23.
//

import FirebaseFirestore
import Foundation
 
/// ViewModel for list of items view
/// Primary Tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView: Bool = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: Item id to be deleted
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
