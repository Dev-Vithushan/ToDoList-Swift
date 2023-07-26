import FirebaseCore
import SwiftUI

@main
struct ToDoList_AppApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
