//
//  ViewController.swift
//  Notes-Realm-iOS
//
//  Created by Hario Budiharjo on 2/10/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit
import RealmSwift

class NoteViewController: UIViewController {
    
    
    // MARK: - Properties
    
    @IBOutlet var tableView: UITableView!
    internal var notes = [Note]()
    
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        notes.removeAll()
        fetchNotes()
        tableView.reloadData()
    }
    
    
    // MARK: - IBAction
    
    @IBAction func addNote(_ sender: UIBarButtonItem) {
        if let navigationController = storyboard?.instantiateViewController(withIdentifier: "add_note_navigation_controller") as? UINavigationController {
            present(navigationController, animated: true, completion: nil)
        }
    }
    
    // MARK: - Private API's
    
    private func setupViews() {
        // setup navigation bar
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = Resources.Color().applicationBaseColor
        
        setupCell()
    }
    
    private func setupCell() {
        let nib = UINib(nibName: "NoteCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "note_cell")
    }
    
    private func fetchNotes() {
        // Get the default Realm
        let realm = try! Realm()
        
        let results = realm.objects(Note.self)
        results.forEach { (note) in
            notes.append(note)
        }
    }
    
}









