//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Fito Toledano on 12/6/20.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    isShowingDetailView = false
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                    
                }).padding()
            }
            FrameworkCell(framework: framework)
                .padding()
            Text(framework.description)
                .padding()
            Spacer()
            FTButton(urlString: framework.urlString)
                .padding()
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(true))
    }
}
