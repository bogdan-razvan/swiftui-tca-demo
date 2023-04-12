//
//  swiftui_tca_demoApp.swift
//  swiftui-tca-demo
//
//  Created by bogdan razvan on 12.04.2023.
//

import ComposableArchitecture
import SwiftUI

@main
struct swiftui_tca_demoApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView(
                store: Store(
                    initialState: Login.State(),
                    reducer: Login()._printChanges()
                )
            )
        }
    }
}
