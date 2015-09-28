//
//  CustomCellView.swift
//  TextViewCustomCell
//
//  Created by Mauro on 9/27/15.
//  Copyright © 2015 mc. All rights reserved.
//

import UIKit



class CustomCellView: UITableViewCell,  UITextViewDelegate {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        detailTextView.delegate = self
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func textViewShouldBeginEditing(textView:UITextView) -> Bool {
        return false
    }
}
