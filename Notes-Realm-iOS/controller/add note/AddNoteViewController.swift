//
//  AddNoteViewController.swift
//  Notes-Realm-iOS
//
//  Created by Arifin Firdaus on 2/11/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit
import RealmSwift

class AddNoteViewController: UIViewController {
    
    
    // MARK: - Properties
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextField!
    
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    
    // MARK: - IBAction
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func done(_ sender: UIBarButtonItem) {
        
        if (titleTextField.text?.isEmpty)! {
            self.showAlertController(with: "Error", message: "Please fill textfield.")
            return
        }
        
        if (contentTextField.text?.isEmpty)! {
            self.showAlertController(with: "Error", message: "Please fill textfield.")
            return
        }
        
        guard let title = self.titleTextField.text else { return }
        guard let content = self.contentTextField.text else { return }
        
        let id = RandomStringGenerator.randomString(length: 16)
        let note = Note(id: id, title: title, content: content)
        saveNote(with: note)
    }
    
    
    // MARK: - Private API's
    
    private func setupViews() {
        // setup navigation bar
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = Resources.Color().applicationBaseColor
    }
    
    private func saveNote(with note: Note) {
        
        // Get the default Realm
        let realm = try! Realm()
        
        // Persist your data easily
        try! realm.write {
            realm.add(note)
            dismiss(animated: true, completion: nil)
        }
    }
    
    
    
    
    
    
}
