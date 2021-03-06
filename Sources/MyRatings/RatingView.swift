//
//  RatingView.swift
//  SPMDemo
//
//  Created by apple on 12/10/20.
//  Copyright © 2020 gudkesh. All rights reserved.
//

import SwiftUI

public struct RatingView: View {
    var maxRating: Int
    @Binding var currentRating: Int
    var width:Int
    var color: UIColor
    var openSFSymbol:String
    var fillSFSymbol:String
    
    public init(maxRating: Int, currentRating: Binding<Int>, width: Int = 30,
                color:UIColor = UIColor.systemYellow,
                openSFSymbol: String = "star", fillSFSymbol: String = "star.fill") {
        self.maxRating = maxRating
        self._currentRating = currentRating
        self.width = width
        self.color = color
        self.openSFSymbol = openSFSymbol
        self.fillSFSymbol = fillSFSymbol
    }
    public var body: some View {
        HStack {
            ForEach(0..<maxRating) { rating in
                Image(systemName: rating < self.currentRating ? self.fillSFSymbol : self.openSFSymbol)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color(self.color))
                    .onTapGesture {
                        self.currentRating = rating+1
                }
            }
        }.frame(width: CGFloat(maxRating * width))
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(maxRating: 5, currentRating: .constant(3))
        .environment(\.colorScheme, .light)
        .previewLayout(.sizeThatFits)
        .padding(10)
    }
}
