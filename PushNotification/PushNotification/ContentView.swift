//
//  ContentView.swift
//  PushNotification
//
//  Created by Lizandra Malta on 08/10/25.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    
    let notificationCenter = UNUserNotificationCenter.current()
    
    var body: some View {
        VStack {
            Button("Request Notification Access") {
                Task {
                    do {
                        try await notificationCenter.requestAuthorization(options: [.alert, .badge, .sound])
                    } catch {
                        print("Request authorization error")
                    }
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
