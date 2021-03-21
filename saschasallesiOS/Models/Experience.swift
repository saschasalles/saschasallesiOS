//
//  Experience.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 16/03/2021.
//

import Foundation
import CoreLocation

struct Experience {
  var societyName: String
  var beginDate: Date
  var endDate: Date
  var contractType: String
  var description: String
  var praticedSkills: [Skill]
  var latitude: CLLocationDegrees
  var longitude: CLLocationDegrees
}
