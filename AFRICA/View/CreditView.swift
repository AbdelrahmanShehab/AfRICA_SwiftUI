//
//  CreditView.swift
//  AFRICA
//
//  Created by Abdelrahman Shehab on 09/04/2023.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
            
            Text("""
  Copyright © Abdelrahman Shehab
  All right reserved
  Better Apps ♡ Less Code
  """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        }//: VSTACK
        .padding()
        .opacity(0.4)
        
    }
}

struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
