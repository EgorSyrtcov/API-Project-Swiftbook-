//
//  CommentsViewController
//  API project
//
//  Created by Egor Syrtcov on 3/9/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class CommentsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var comments = [Course]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://api.letsbuildthatapp.com/jsondecodable/courses"
        
        NetworkService.shared.getData(url: urlString) { (cource) in
            self.comments = cource
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
}

extension CommentsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CommentCell
        let comment = comments[indexPath.row]
        cell.confuguration(with: comment)
        return cell
    }
}
