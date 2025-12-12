//
//  CurrentUserProfileView.swift
//  TikTokTutorial
//
//  Created by Lukáš Kaukič on 11.12.2025.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 2) {
                    // Profile header
                    ProfileHeaderView()
                    
                    // post grid view
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle(Text("Profile"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
