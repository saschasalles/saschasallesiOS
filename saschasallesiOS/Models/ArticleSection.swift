//
//  ArticleSection.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 16/03/2021.
//

import Foundation

struct ArticleSection: Identifiable {
  var id: UUID = UUID()
  var title: String
  var content: String
  var image: String?
}

var lorem =
  """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    Aenean est arcu, laoreet id commodo eu, iaculis sed felis.
    Phasellus tincidunt ipsum quis risus dictum commodo.
    Duis vel hendrerit sem. Duis nunc erat, tristique eu tempor eu,
    interdum a felis. Aliquam bibendum sit amet sapien at pulvinar.
    Aenean at feugiat mi, tristique suscipit tellus.
    Integer eu turpis orci. Quisque rutrum gravida turpis eu suscipit.
    Mauris vestibulum, neque ut bibendum facilisis,
    enim justo mollis mi, vel tincidunt urna orci ut magna.
    Integer congue turpis porta mi vestibulum,
    quis malesuada tortor pretium.
    Curabitur pellentesque urna non justo tincidunt
    fringilla.
    """

var sectionItems: [ArticleSection] = [
  ArticleSection(title: "Introduction", content: lorem),
  ArticleSection(title: "Les opérateurs", content: lorem),
  ArticleSection(title: "Les types", content: lorem),
  ArticleSection(title: "Le control flow", content: lorem)
]
