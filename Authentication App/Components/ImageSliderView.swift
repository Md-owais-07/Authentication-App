//
//  ImageSliderView.swift
//  Authentication App
//
//  Created by Mohammad Owais on 11/03/24.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex: Int = 0
    var slides: [String] = ["img1", "img2", "img1", "img2", "img5"]
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .trailing) {
                Image(slides[currentIndex])
                    .resizable()
                    .frame(width: 350, height: 300)
                    .scaledToFit()
//                    .cornerRadius(15)
            }
            HStack{
                ForEach(0..<5){index in
                    Circle()
                        .fill(self.currentIndex == index ? Color(.blue) : Color(.systemGray))
                        .frame(width: 5, height: 5)
                }
            }
//            .padding(.top)
//            .padding(.leading, 1)
        }
//        .padding()
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) {timer in
                if self.currentIndex + 1 == self.slides.count {
                    self.currentIndex = 0
                } else {
                    self.currentIndex += 1
                }
            }
        }
    }
}

#Preview {
    ImageSliderView()
}
