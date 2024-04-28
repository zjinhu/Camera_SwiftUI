//
//  SwiftUIView.swift
//  
//
//  Created by FunWidget on 2024/4/28.
//

import SwiftUI

public extension View {
    @ViewBuilder
    func camera(isPresented: Binding<Bool>,
                photoData: Binding<Data?>) -> some View {
        fullScreenCover(isPresented: isPresented) {
            CameraView(photoData: photoData)
                .ignoresSafeArea()
        }
    }
}
