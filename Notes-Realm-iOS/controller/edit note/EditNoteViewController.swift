//
//  EditNoteViewController.swift
//  Notes-Realm-iOS
//
//  Created by Arifin Firdaus on 2/12/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit
import RealmSwift

class EditNoteViewController: UIViewController {
    
    // MARK: - Properites
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextField!
    
    var noteId: String?
    private var note: Note?
    
    
    // MARK: - View life cycle
    
    override func viewWillAppear(_ animated: Bool) {
        if let id = noteId {
            fetchNote(with: id)
            updateUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    
    // MARK: - IBAction
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func done(_ sender: Any) {
        updateNoteDatabase()
    }
    
    
    // MARK: - Private API's
    
    private func setupViews() {
        // setup navigation bar
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = Resources.Color().applicationBaseColor
    }
    
    
    // MARK: - Realm stuff
    private func fetchNote(with id: String) {
        let realm = try! Realm()
        let predicate = NSPredicate(format: "id == %@", id);
        if let note = realm.objects(Note.self).filter(predicate).first {
            self.note = note
        }
    }
    
    private func updateUI() {
        titleTextField.text = note?.title
        contentTextField.text = note?.content
    }
    
    private func updateNoteDatabase() {
        guard let noteId = noteId else { return }
        guard let title = titleTextField.text else { return }
        guard let content = contentTextField.text else { return }
        
        let newNote = Note(id: noteId, title: title, content: content)
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(newNote, update: true)
            dismiss(animated: true, completion: nil)
        }
        
    }
    
    
    
    
    
    
    
}
