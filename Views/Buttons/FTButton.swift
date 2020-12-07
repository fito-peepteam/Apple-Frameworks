//
//  FTButton.swift
//  Apple-Frameworks
//
//  Created by Fito Toledano on 12/6/20.
//

import SwiftUI

struct FTButton: View {
    
    let urlString: String
    
    var body: some View {
        Link(destination: URL(string: urlString)!) {
            Text("Learn more")
                .fontWeight(.bold)
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

struct FTButton_Previews: PreviewProvider {
    static var previews: some View {
        FTButton(urlString: MockData.sampleFramework.urlString)
    }
}
