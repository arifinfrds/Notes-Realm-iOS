//
//  NoteCell.swift
//  Notes-Realm-iOS
//
//  Created by Hario Budiharjo on 2/11/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class NoteCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    var dataSource: Note? {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        titleLabel.text = dataSource?.title
        contentLabel.text = dataSource?.content
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
