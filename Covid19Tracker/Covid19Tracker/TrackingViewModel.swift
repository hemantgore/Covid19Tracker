//
//  TrackingViewModel.swift
//  Covid19Tracker
//
//  Created by Hemant Gore on 06/06/20.
//  Copyright © 2020 Sci-Fi. All rights reserved.
//

import Foundation

class TrackingViewModel {
    private var tracking: Tracking

    init(tracking: Tracking) {
        self.tracking = tracking
    }

    let id: UUID = UUID()

    var state: String {
        self.tracking.state
    }

    var total: Int {
        self.tracking.total
    }

    var positive: Int {
        self.tracking.positive
    }

    var death: Int {
        self.tracking.death
    }

    var totalHospitalized: Int {
        self.tracking.hospitalized ?? 0
    }
}
