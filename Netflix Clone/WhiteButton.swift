//
//  WhiteButton.swift
//  Netflix Clone
//
//  Created by Lawson Kelly on 8/10/21.
//

import SwiftUI

struct WhiteButton: View {
    var text: String
    var imageName: String

    var action: () -> Void

    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .font(.system(size: 16))
                    .bold()
                Spacer()
            }
            .padding(.vertical, 6)
            .background(Color.white)
            .foregroundColor(.black)
            .cornerRadius(3.0)
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        WhiteButton(text: "Play", imageName: "play.fill") {
            print("clicked")
        }
    }
}
