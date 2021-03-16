//
//  Article.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 16/03/2021.
//

import Foundation
import UIKit

struct Article {
    var title: String
    var subtitle: String
    var readDuration: String
    var topics: [Skill]
    var createdAt: Date
    var updatedAt: Date
    var content: String
    var image: UIImage?
    var image2: UIImage?
}
