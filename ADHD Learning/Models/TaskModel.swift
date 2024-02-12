import Foundation

struct TaskModel: Identifiable, Hashable {
    var title: String
    var type: String
    var isCompleted: Bool
    let id = UUID()
    
    
    init(title: String = "", type: String = "", isCompleted: Bool = false) {
        self.title = title
        self.type = type
        self.isCompleted = isCompleted
    }
    
    
    func updateTask() -> TaskModel {
        return(TaskModel(title: title, isCompleted: !isCompleted))
    }
}
