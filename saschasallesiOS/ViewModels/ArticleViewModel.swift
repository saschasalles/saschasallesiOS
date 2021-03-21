//
//  ArticleViewModel.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 16/03/2021.
//

import Foundation
import SwiftUI

class ArticleViewModel: ObservableObject {
  @Published var offset: CGFloat = 0
  @Published var selection: String = sectionItems.first!.title
}
