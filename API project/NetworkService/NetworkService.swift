//
//  NetworkService
//  API project
//
//  Created by Egor Syrtcov on 3/11/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import Foundation

class NetworkService {
    static let shared = NetworkService()
    
    public func getData(url: URL, complition: @escaping (Any) -> ()) {
        let session = URLSession.shared
    
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    complition(json)
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}
