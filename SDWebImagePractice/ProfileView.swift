//
//  ProfileView.swift
//  SDWebImagePractice
//
//  Created by Tim Coder on 5/30/24.
//

import SwiftUI
import SDWebImageSwiftUI
struct ProfileView: View {
    @State private var username = ""
    @State private var passworfd = ""
    let mountainUrlString = "https://static.vecteezy.com/system/resources/previews/026/542/204/non_2x/landscape-natural-beautiful-mountains-and-blue-sky-panorama-photo.jpg"
    let urlString = "https://media.licdn.com/dms/image/C4E03AQEGU_o9qGh7aQ/profile-displayphoto-shrink_100_100/0/1517026021812?e=1722470400&v=beta&t=svM4LHvEDxYEMJ2oqwqprCMGQS6ISKm2jbJv2XLxQE4"
    let connerUrlString = "https://media.licdn.com/dms/image/D5603AQEGyyjrmniffw/profile-displayphoto-shrink_200_200/0/1685820986202?e=1722470400&v=beta&t=z85U1P_zGPy4G-kZpgfMdJN2ipDskmkkejO4sVcSbNU"
    var body: some View {
        
        ZStack{
//            AsyncImage(url: URL(string: mountainUrlString)) { image in
//                image.resizable()
//                    .scaledToFill()
//            } placeholder: {
//                ProgressView()
//            }
//            .ignoresSafeArea()
            WebImage(url: URL(string: mountainUrlString))
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            ZStack {
                Color.black.opacity(0.2)
                VStack {
                    TextField("Username", text: $username)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                    SecureField("Password", text: $passworfd)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                }
            }
            .frame(width: 300, height: 100)
            .cornerRadius(20)
        }
//        .frame(width: 200, height: 200)
//        .clipShape(Circle())
    }
}

#Preview {
    ProfileView()
}
