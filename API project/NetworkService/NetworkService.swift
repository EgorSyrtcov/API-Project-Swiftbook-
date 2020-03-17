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
    
    public func getData(url: String, complition: @escaping ([Course]) -> ()) {
        
        guard let url = URL(string: url) else { return }
        let session = URLSession.shared
    
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let cource = try JSONDecoder().decode([Course].self, from: data)
                DispatchQueue.global().async {
                     complition(cource)
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}
