//
//  Tracking.swift
//  Covid19Tracker
//
//  Created by Hemant Gore on 06/06/20.
//  Copyright © 2020 Sci-Fi. All rights reserved.
//

import Foundation

struct Tracking: Decodable {
    let state: String
    let total: Int
    let positive: Int
    let death: Int
    let hospitalized: Int?
}
