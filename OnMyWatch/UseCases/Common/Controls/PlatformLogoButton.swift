//
//  PlatformLogoButton.swift
//  OnMyWatch
//
//  Created by Damian on 27/2/23.
//

import SwiftUI

enum PlatformLogoButtonType {
    case netflix, prime, hbo_max, movistar, personalizado
}

struct PlatformLogoButton: View {
    let text: LocalizedStringKey
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
                HStack {
                    Text(text).font(size: .button)
                }
        }
        .padding(
            EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
        )
        .foregroundColor(.white)
        .background(color)
        .clipShape(Capsule())
    }
}

struct PlatformLogoButton_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView(.horizontal,showsIndicators: true){
                LazyHStack(spacing: Size.small.rawValue) {
                    PlatformLogoButton(text: "Netflix", color: .red,action: {
                        print("netflix")
                    })
                    PlatformLogoButton(text: "Prime Video", color:.blue, action: {
                        print("Prime Video")
                    })
                    PlatformLogoButton(text: "HBO Max", color: .purple, action: {
                        print("HBO Max")
                    })
                    PlatformLogoButton(text: "Personalizado", color: Color(hex: 0x8a0f08), action: {
                        print("Personalizado")
                    })
                }
        }
        .frame(height: 35)
        .padding(
            EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
        )

    }
}
