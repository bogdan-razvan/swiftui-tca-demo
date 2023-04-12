//
//  Login.swift
//  swiftui-tca-demo
//
//  Created by bogdan razvan on 12.04.2023.
//

import ComposableArchitecture
import Foundation

struct Login: ReducerProtocol {

    struct State: Equatable {
        var username: String = ""
        var password: String = ""
    }

    enum Action: Equatable {
        case submit
        case usernameChanged(String)
        case passwordChanged(String)
    }

    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case .submit:
            print("Username is: \(state.username)")
            print("Password is: \(state.password)")
            return .none
        case let .usernameChanged(newValue):
            state.username = newValue
            return .none
        case let .passwordChanged(newValue):
            state.password = newValue
            return .none
        }
    }
}
