//
//  CommentNetworkService.swift
//  API project
//
//  Created by Egor Syrtcov on 3/11/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import Foundation

class CommentNetworkService {
    
    static func getComments(complition: @escaping (GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                complition(response)
            } catch {
                print(error)
            }
        }
    }
}
