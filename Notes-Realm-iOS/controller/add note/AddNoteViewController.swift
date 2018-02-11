//
//  AddNoteViewController.swift
//  Notes-Realm-iOS
//
//  Created by Arifin Firdaus on 2/11/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

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
        dismiss(animated: true) {
            let id = RandomStringGenerator.randomString(length: 16)
            guard let title = self.titleTextField.text else { return }
            guard let content = self.contentTextField.text else { return }
            
            let note = Note(id: id, title: title, content: content)
            self.saveNote(with: note)
        }
    }
    
    
    // MARK: - Private API's
    
    private func setupViews() {
        // setup navigation bar
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = Resources.Color().applicationBaseColor
    }
    
    private func saveNote(with note: Note) {
        print(note.id)
    }
    
    
    
    
    
    
}
