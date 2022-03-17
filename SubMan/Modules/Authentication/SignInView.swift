//
//  SignInView.swift
//  SubMan
//
//  Created by Fitzgerald Afful on 11/03/2022.
//

import SwiftUI

struct SignInView: View {

    func googleSignIn() {

    }

    func appleSignIn() {

    }

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("logo")

                Spacer()
            }

            Text("Get Started")
                .largeBoldFont(color: .purple)
                .padding(.top, 50)

            Text("Create an account or sign in by choosing an option below")
                .defaultFont(color: .darkGrey)

            Spacer()
                .frame(height: 100)

            Button(action: googleSignIn) {
                HStack{
                    Image("google")
                        .frame(width: 30, height: 30)

                    Spacer()

                    Text("Continue with Google")
                        .defaultFont()

                    Spacer()
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.lightGrey)
                )
            }

            Button(action: appleSignIn) {
                HStack{
                    Image("apple")
                        .frame(width: 30, height: 30)

                    Spacer()

                    Text("Continue with Apple")
                        .defaultFont()

                    Spacer()
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.lightGrey)
                )
            }

            Spacer()
        }
        .padding(.horizontal, 30)
        .padding(.top, 100)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
