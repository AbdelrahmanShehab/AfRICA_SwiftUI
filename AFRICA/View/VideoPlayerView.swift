//
//  VideoPlayerView.swift
//  AFRICA
//
//  Created by Abdelrahman Shehab on 07/04/2023.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: -  PROPERTY
    
    var videoSelected: String
    var videoTitle: String
    
    // MARK: -  BODY
    var body: some View {
        
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
                
            }.overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top, 6)
                .padding(.horizontal, 8)
            ,alignment: .topLeading
            )
        }//: VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

// MARK: -  PREVEIW
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTitle: "lion")
    }
}
