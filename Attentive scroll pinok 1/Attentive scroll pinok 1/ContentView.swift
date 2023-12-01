//
//  ContentView.swift
//  Attentive scroll pinok 1
//
//  Created by Иван Ткачев on 01/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        ForEach(1...100, id: \.self) { num in
                            HStack {
                                Spacer()
                                Text(String(num))
                                Spacer()
                            }
                            
                        }
                        
                    }
                }
                .scrollClipDisabled()
                Color.red
                    .opacity(0.5)
                    .frame(height: 50)
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
//                        Button("Star", systemImage: "star.fill") {
//                        }
//                        .buttonStyle(.borderless)
                    Button {
                    }
                label: {
                    VStack {
                    Image(systemName: "star.fill")
                    Text("First")
                    }
                }
                    .buttonStyle(.borderless)
                }
            }
        }
            
    }
}

#Preview {
    ContentView()
}
