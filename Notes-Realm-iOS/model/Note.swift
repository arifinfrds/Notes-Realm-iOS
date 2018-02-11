//
//  Note.swift
//  Notes-Realm-iOS
//
//  Created by Hario Budiharjo on 2/10/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import Foundation
import RealmSwift

class Note: Object {
    
    // MARK: - Properties
    
    @objc dynamic var id: String = ""
    @objc dynamic var title: String = ""
    @objc dynamic var content: String = ""
    
    
    // MARK: - Constructor
    
    convenience init(id: String, title: String, content: String) {
        self.init()
        self.id = id
        self.title = title
        self.content = content
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }

}











































// MARK: - Public API's
//
//    func toDictionary() -> [String: Any] {
//
//        guard
//            let _id = self.id,
//            let _title = self.title,
//            let _content = self.content
//            else {
//                return [
//                    "data": false
//                ]
//        }
//
//        return [
//            "id" : _id,
//            "title" : _title,
//            "content": _content
//        ]
//    }
