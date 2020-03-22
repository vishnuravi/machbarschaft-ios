//
//  Job.swift
//  Machbarschaft
//
//  Created by Robert Ecker on 22.03.20.
//  Copyright © 2020 Linus Geffarth. All rights reserved.
//

import UIKit
import CoreLocation

enum JobType {
    case medicine
    case groceries
    case misc
    
    var title: String {
        switch self {
        case .medicine:
            return "Medikamente"
        case .groceries:
            return "Einkäufe"
        case .misc:
            return "Anderes"
        }
    }
}

enum JobUrgency: Int {
    case urgent = 0
    case today = 1
    case tomorrow = 2
    case undefined = 3
    
    var color: UIColor {
        switch self {
        case .urgent:
            return UIColor(named: "Red")!
        case .today:
            return UIColor(named: "Yellow")!
        case .tomorrow:
            return UIColor(named: "Green")!
        case .undefined:
            return .gray
        }
    }
}

enum JobStatus {
    case open
    case inProgress
    case done
}

struct Job {
    var jobID: Int
    var type: JobType
    var urgency: JobUrgency
    var status: JobStatus
    var clientName: String
    var clientPhone: String
    var city: String
    var zip: String
    var location: CLLocationCoordinate2D?
    var street: String
    var houseNumber: String
    var description: String?
}
