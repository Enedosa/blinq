

import Foundation

//struct PostResponse: Decodable {
//    let posts: [Post]
//}

struct PostModel:Codable {
    let username: String?
    let display: String?
    let timestamp: Int?
    let description: String?
    let id: String?
    let thumbnail: String?
    let video: Bool
    
}


