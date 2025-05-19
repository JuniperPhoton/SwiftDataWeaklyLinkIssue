//
//  ContentView.swift
//  SwiftDataCompatTest
//
//  Created by JuniperPhoton on 2025/5/20.
//

import SwiftUI
import SwiftData
import MyLibrary

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .task {
            if #available(iOS 17.0, *) {
                await test()
            } else {
                print("SwiftData not available")
            }
        }
    }
    
    @available(iOS 17.0, *)
    private nonisolated func test() async {
        do {
            let container = try ModelContainer(for: MyModel.self)
            print("inited container")
        } catch {
            print("error \(error)")
        }
    }
}
