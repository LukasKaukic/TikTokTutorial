//
//  FeedViewModel.swift
//  TikTokTutorial
//
//  Created by Lukáš Kaukič on 11.12.2025.
//

import Foundation
internal import Combine

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
     let videoUrls = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"

    ]
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
         self.posts = [
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[0]),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[1]),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[2]),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[3])
            ]
    }
}
