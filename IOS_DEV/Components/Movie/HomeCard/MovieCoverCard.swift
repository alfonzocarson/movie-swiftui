//
//  MovieCoverCard.swift
//  
//
//  Created by Alfonzo on 2021/7/8.
//

import SwiftUI
import SDWebImageSwiftUI

struct MovieCoverCard: View {
    let movie: MovieCardInfo
    @ObservedObject var imageLoader = ImageLoader()
    
    var body: some View {
        ZStack {
            if movie.posterURL.description != "" {
         
                WebImage(url: movie.posterURL)
                    .resizable()
                    .frame(maxWidth: 120, maxHeight: 200)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(8)
                    .shadow(radius: 4)
            
                
            } else {
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
                    .cornerRadius(8)
                    .shadow(radius: 4)
                    .frame(maxWidth: 120, maxHeight: 200)
                
                Text(movie.title)
                    .multilineTextAlignment(.center)
            }
        }
        .onAppear {
            self.imageLoader.loadImage(with: self.movie.posterURL)
        }
    }
}
//
//struct MovieCoverCard_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieCoverCard(movie: stubbedMovie[0])
//    }
//}
//
//
