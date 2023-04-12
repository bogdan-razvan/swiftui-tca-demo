//
//  ContentView.swift
//  swiftui-tca-demo
//
//  Created by bogdan razvan on 12.04.2023.
//

import ComposableArchitecture
import SwiftUI

struct LoginView: View {

    let store: StoreOf<Login>

    var body: some View {
        WithViewStore(store) { viewStore in
            VStack(spacing: 20) {
                TextField("Username", text: viewStore.binding(get: \.username, send: Login.Action.usernameChanged))
                TextField("Password", text: viewStore.binding(get: \.password, send: Login.Action.passwordChanged))
                Button(action: {
                    viewStore.send(.submit)
                }) {
                    Text("Submit")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
            .padding(40)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(store: .init(
            initialState: Login.State(),
            reducer: Login()
        ))
    }
}
