//
//  ContentView.swift
//  Example
//
//  Created by FunWidget on 2024/4/22.
//

import SwiftUI
import Camera_SwiftUI
struct ContentView: View {
    @State private var isPresented: Bool = false
    @State private var photoData: Data?
    var body: some View {
        VStack {
            Button {
                isPresented.toggle()
            } label: {
                Text("Camera")
            }
            .camera(isPresented: $isPresented,
                    photoData: $photoData)
            
            if let photoData,
               let uiImage = UIImage(data: photoData) {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
