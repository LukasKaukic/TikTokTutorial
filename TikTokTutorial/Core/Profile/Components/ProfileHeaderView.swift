//
//  ProfileHeaderView.swift
//  TikTokTutorial
//
//  Created by Lukáš Kaukič on 11.12.2025.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                // profile image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                // username
                Text("@Lewis.Hamilton")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            // stack view
            HStack(spacing: 16){
                UserStatView(value: 5, title: "Following")
                UserStatView(value: 4, title: "Followers")
                UserStatView(value: 120, title: "Likes")
            }
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}
