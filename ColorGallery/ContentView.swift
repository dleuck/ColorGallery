//
//  ContentView.swift
//  ColorGallery
//
//  Created by Daniel Leuck on 2023/02/25.
//

import SwiftUI

import KiUI

struct ContentView: View {
    
    let palette = Palette.socialPalette
    
    var body: some View {
        VStack {
            vspace(20)
            VStack {
                Text("Brightness")
                    .bold()
                ForEach(palette.rgbs, id: \.self) { rgb in
                    HStack {
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.brightness(1.95).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.brightness(1.75).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.brightness(1.5).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.brightness(1.25).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.brightness(0.75).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.brightness(0.5).color)
                    }
                }
            }
            vspace(20)
            Text("Lightness")
                .bold()
            VStack {
                ForEach(palette.rgbs, id: \.self) { rgb in
                    HStack {
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.lightness(0.95).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.lightness(0.75).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.lightness(0.5).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.lightness(0.25).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.lightness(-0.25).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.lightness(-0.50).color)
                    }
                }
            }
            vspace(20)
            Text("SmartLight")
                .bold()
            VStack {
                ForEach(palette.rgbs, id: \.self) { rgb in
                    HStack {
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.smartLight(modBrightness: 1.95, modLightness: 0.95, percent: 0.95).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.smartLight(modBrightness: 1.75, modLightness: 0.75, percent: 0.95).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.smartLight(modBrightness: 1.5, modLightness: 0.50, percent: 0.95).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.smartLight(modBrightness: 1.25, modLightness: 0.25, percent: 0.95).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.smartLight(modBrightness: 0.75, modLightness: -0.25).color)
                        Circle().frame(width: 20, height: 20)
                            .foregroundColor(rgb.smartLight(modBrightness: 0.5, modLightness: -0.50).color)
                    }
                }
            }
            vspace(20)
            ZStack {
                Circle()
                    .frame(width: 46, height: 46)
                    .foregroundColor(palette.rgbs[2].color)
                Circle()
                    .frame(width: 40, height: 40)
                    .foregroundColor(palette.rgbs[2].smartLight(
                        modBrightness: 1.8, modLightness: 0.88, percent: 0.95).color
                    )
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
        }
        .padding(20)
        .background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
