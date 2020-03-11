//
//  CommentCell.swift
//  API project
//
//  Created by Egor Syrtcov on 3/11/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func confuguration(with comment: Comment) {
        label.text = comment.name
        textView.text = comment.body
    }
}
