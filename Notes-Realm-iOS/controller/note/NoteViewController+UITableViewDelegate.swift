//
//  NoteViewController+UITableViewDelegate.swift
//  Notes-Realm-iOS
//
//  Created by Hario Budiharjo on 2/11/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

// MARK: - UITableViewDelegate
extension NoteViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}
