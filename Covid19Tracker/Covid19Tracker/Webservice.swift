//
//  Webservice.swift
//  Covid19Tracker
//
//  Created by Hemant Gore on 06/06/20.
//  Copyright © 2020 Sci-Fi. All rights reserved.
//

import Foundation

final class WebService {

    func getCovidTrackingResult(completion: @escaping ([Tracking]?) -> Void) {
        guard let url = URL(string: "https://covidtracking.com/api/v1/states/current.json") else  {
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return completion(nil)
            }

            let trackingList = try? JSONDecoder().decode([Tracking].self, from: data)
            completion(trackingList)

        }.resume()
    }
}
