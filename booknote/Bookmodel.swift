//
//  BookModel.swift
//  booknote
//
//  Created by 木村美希 on 2020/02/29.
//  Copyright © 2020 木村美希. All rights reserved.
//

import Foundation
import RealmSwift

class BookModel: Object {
    @objc dynamic var bookTitle = ""
    @objc dynamic var bookAuther =  ""
    @objc dynamic var image: NSData? = nil
    @objc dynamic var type: Int = 0

}

