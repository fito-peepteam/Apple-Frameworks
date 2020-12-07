//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Fito Toledano on 12/6/20.
//

import SwiftUI

struct FrameworkGridView: View {
    
    // @StateObject: A property wrapper type that instantiates an observable object.
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkCell(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                                viewModel.isShowingDetailView = true
                            }
                    }
                }
            }.navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(
                    framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
