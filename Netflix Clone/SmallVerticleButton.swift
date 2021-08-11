//
//  SmallVerticleButton.swift
//  Netflix Clone
//
//  Created by Lawson Kelly on 8/10/21.
//

import SwiftUI

struct SmallVerticleButton: View {
    var text: String
    var isOn: Bool
    var isOnImage: String
    var isOffImage: String

    var imageName: String {
        if isOn {
            return isOnImage
        } else {
            return isOffImage
        }
    }

    var action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack(spacing: 0) {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct SmallVerticleButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            SmallVerticleButton(text: "My list",
                                isOn: true,
                                isOnImage: "checkmark",
                                isOffImage: "plus") {
                print("tapped")
            }
        }
    }
}
