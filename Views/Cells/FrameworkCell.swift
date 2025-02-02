//
//  FrameworkCell.swift
//  Apple-Frameworks
//
//  Created by Fito Toledano on 12/6/20.
//

import SwiftUI

struct FrameworkCell: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
                
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}

struct FrameworkCell_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkCell(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
