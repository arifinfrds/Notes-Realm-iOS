//
//  ViewController.swift
//  Notes-Realm-iOS
//
//  Created by Hario Budiharjo on 2/10/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet var tableView: UITableView!
    
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
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
    
}









