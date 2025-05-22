//
//  ContentView.swift
//  GitLearning
//
//  Created by Darren Pan on 5/21/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSheet = false
    @State var showNavigation = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button {
                    showNavigation = true
                } label: {
                    Text("Git Learning App")
                }

                Button {
                    showSheet = true
                } label: {
                    Text("Show Details")
                }

            }
            .padding()
            .sheet(isPresented: $showSheet) {
                DetailView()
            }
            .navigationDestination(isPresented: $showNavigation) {
                DetailView()
            }
        }
    }
}

#Preview {
    ContentView()
}
