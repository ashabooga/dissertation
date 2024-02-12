import Foundation

struct LessonModel: Identifiable, Hashable {
    var title: String
    var contentList: [String]
    var isCompleted: Bool
    let id = UUID()
    
    
    init(title: String = "", contentList: [String] = [""], isCompleted: Bool = false) {
        self.title = title
        self.contentList = contentList
        self.isCompleted = isCompleted
    }
    
    
    func updateTask() -> LessonModel {
        return(LessonModel(title: title, contentList: contentList, isCompleted: !isCompleted))
    }
}
