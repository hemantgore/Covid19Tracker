//
//  ContentView.swift
//  Covid19Tracker
//
//  Created by Hemant Gore on 06/06/20.
//  Copyright © 2020 Sci-Fi. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject private var trackingListViewModel = TrackingListViewModel()

    init() {
        self.trackingListViewModel.getTrackingData()
    }

    var body: some View {
        NavigationView {
            List(self.trackingListViewModel.tracking, id: \.id) { tracking in
                HStack {
                    Text(tracking.state)
                    .padding()
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .clipShape(Circle())
                    Spacer()
                    VStack {
                        Text("Total: \(tracking.total)")
                        HStack {
                            Text("🏥 \(tracking.totalHospitalized)")
                            Text("☠️ \(tracking.death)")
                        }
                    }
                    Spacer()
                }
            }.navigationBarTitle("Covid19 Tracker- US")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
