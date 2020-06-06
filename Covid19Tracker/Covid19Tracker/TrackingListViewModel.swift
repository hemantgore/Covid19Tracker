//
//  TrackingListViewModel.swift
//  Covid19Tracker
//
//  Created by Hemant Gore on 06/06/20.
//  Copyright © 2020 Sci-Fi. All rights reserved.
//

import Foundation

final class TrackingListViewModel: ObservableObject {
    @Published var tracking = [TrackingViewModel]()

    func getTrackingData() {
        WebService().getCovidTrackingResult { trackingList in
            if let trackingList = trackingList {
                DispatchQueue.main.async {
                    self.tracking = trackingList.map(TrackingViewModel.init)
                }
            }
        }
    }
}
