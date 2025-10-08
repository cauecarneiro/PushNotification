//
//  PushNotificationApp.swift
//  PushNotification
//
//  Created by Lizandra Malta on 08/10/25.
//

import SwiftUI

@main
struct PushNotificationApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: CustomAppDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear(perform: {
                    // this makes sure that we are setting the app to the app delegate as soon as the main view appears
                    appDelegate.app = self
                })
        }
    }
}
