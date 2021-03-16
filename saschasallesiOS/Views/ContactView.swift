//
//  ContactView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 08/03/2021.
//

import SwiftUI
import MessageUI

struct ContactView: View {

    @State var isShowingMailView = false
    @State var result: Result<MFMailComposeResult, Error>?

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Button(action: {
                        self.isShowingMailView.toggle()
                    }, label: {
                        Label(
                            title: { Text("Send me an email") },
                            icon: { Image(systemName: "envelope.circle.fill").font(.title)})
                    }).disabled(!MFMailComposeViewController.canSendMail())
                }
                Section {
                    Link(destination: URL(string: "https://github.com/saschasalles")!) {
                        Label(
                            title: { Text("Follow me on GitHub") },
                            icon: { Image("github").font(.title) }
                        )
                    }
                }
                Section {
                    Link(destination: URL(string: "https://www.linkedin.com/in/sascha-salles")!) {
                        HStack {
                            Label(
                                title: { Text("Follow me on Linkedin") },
                                icon: { Image("linkedin") }
                            )
                        }
                    }
                }
                Section {
                    Link(destination: URL(string: "https://www.instagram.com/iamsaschasalles/")!) {
                        Label(
                            title: { Text("Follow me on Instagram") },
                            icon: { Image("instagram") }
                        )
                    }
                }

                Section {
                    Link(destination: URL(string: "https://www.facebook.com/sascha.salles/")!) {
                        Label(
                            title: { Text("Follow me on Facebook") },
                            icon: { Image("facebook") }
                        )
                    }
                }

                    .sheet(isPresented: $isShowingMailView) {
                    MailView(isShowing: self.$isShowingMailView, result: self.$result)
                }

            }
                .navigationTitle("Contact")
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
