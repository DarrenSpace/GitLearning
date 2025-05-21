//
//  ContentView.swift
//  GitLearning
//
//  Created by Darren Pan on 5/21/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Hello Detail View")
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
