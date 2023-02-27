//
//  InfoDetails.swift
//  4 Homework SwiftUI
//
//  Created by Vladislav Green on 2/27/23.
//

import SwiftUI

struct InfoDetails: View {
    var post: Post
    
    var body: some View {
        ScrollView {
            post.image
                .resizable()
                .scaledToFit()
                .padding(.top, 12)
                .shadow(radius: 10)
            VStack {
                Text(post.subtitle)
                    .font(.title3).fontWeight(.bold)
                    .foregroundColor(.indigo)
                Divider()
                
                Text(post.description)
            }
            .padding()
        }
        .navigationTitle(post.title)
        .background(Color(.systemGray6))
    }
}

struct InfoDetails_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetails(post: data[0])
    }
}
