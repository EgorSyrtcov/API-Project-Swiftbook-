//
//  GetCommentResponse.swift
//  API project
//
//  Created by Egor Syrtcov on 3/11/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import Foundation

struct GetCommentResponse {
    
    typealias JSON = [String: AnyObject]
    
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failInternetError }
        
        var comments = [Comment]()
        for dictinary in array {
            guard let comment = Comment(dict: dictinary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
