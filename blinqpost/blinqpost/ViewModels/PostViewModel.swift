//
//  PostViewModel.swift
//  blinqpost
//


import Foundation
import Firebase

class PostViewModel {
    var post = [PostModel]()
    
    var completion:(() -> Void)?
    
    func getData() {
        var data = [String: Any]()
        let database = Firestore.firestore()
        
        database.collection("post").getDocuments() { (querySnapshot, err) in
                    if let err = err {
                        print("Error getting documents: \(err)")
                    } else {
                        
                        for document in querySnapshot!.documents {
                            let data = document.data()
                            //print("This is the data: \(data)")
                            let username = data["username"] as? String;
                            let timestamp = data["timestamp"] as? Int;
                            let display = data["link"] as? String;
                            let description = data["description"] as? String
                            let id = data["id"] as? String;
                            let thumbnail = data["thumbnail"] as? String
                            let video = data["video"] as? Bool


                            let post = PostModel(username: username ?? "", display: display ?? "", timestamp: timestamp ?? 0, description:  description ?? "", id: id ?? "", thumbnail: thumbnail ?? "", video: video ?? false)
                                //print("this is the post: \(post)")
                                self.post.append(post)

                        }
                        print(self.post)
                        self.completion?()
                    }
                }
    }
}
