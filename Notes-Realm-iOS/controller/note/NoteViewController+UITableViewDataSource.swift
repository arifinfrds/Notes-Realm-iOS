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
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "note_cell", for: indexPath) as! NoteCell
        let note = notes[indexPath.row]
        cell.dataSource = note
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteNoteDatabase(at: indexPath)
            notes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    
    
}
