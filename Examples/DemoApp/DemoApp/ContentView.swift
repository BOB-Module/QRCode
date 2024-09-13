//
//  ContentView.swift
//  DemoApp
//
//  Created by Libo Huang on 2024/9/9.
//

import SwiftUI
import QRCodeSwift

struct ContentView: View {
    let message = "a"
    
    var body: some View {
        VStack {
            let qrCodeGen = QRCodeGen(message: message)
            let qrUIImage = qrCodeGen.generateQRCode()
            Image(uiImage: qrUIImage)
                .interpolation(.none)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
