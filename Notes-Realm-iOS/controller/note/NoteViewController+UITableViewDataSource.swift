//
//  NoteViewController+UITableViewDataSource.swift
//  Notes-Realm-iOS
//
//  Created by Hario Budiharjo on 2/11/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

// MARK: - UITableViewDataSource
extension NoteViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "note_cell", for: indexPath) as! NoteCell
        return cell
    }
    
    
}
