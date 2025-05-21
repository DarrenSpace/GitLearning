//
//  ContentView.swift
//  GitLearning
//
//  Created by Darren Pan on 5/21/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSheet = false
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Hello Detail View")
                }
                Button {
                    showSheet = true
                } label: {
                    Text("Show sheet")
                }

            }
            .padding()
            .sheet(isPresented: $showSheet) {
                DetailView()
            }
        }
    }
}

#Preview {
    ContentView()
}
