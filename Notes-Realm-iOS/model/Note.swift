//
//  Note.swift
//  Notes-Realm-iOS
//
//  Created by Hario Budiharjo on 2/10/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import Foundation

struct Note {
    
    
    // MARK: - Properties
    
    var id: String?
    var title: String?
    var content: String?
    
    
    // MARK: - Public API's
    
    func toDictionary() -> [String: Any] {
        
        guard
            let _id = self.id,
            let _title = self.title,
            let _content = self.content
            else {
                return [
                    "data": false
                ]
        }
        
        return [
            "id" : _id,
            "title" : _title,
            "content": _content
        ]
    }
    
}
