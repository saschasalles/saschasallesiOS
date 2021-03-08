//
//  AboutView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 07/03/2021.
//

import SwiftUI
import MessageUI

struct AboutView: View {
    @State private var showRealImage: Bool = false
    @State private var scaleValue = CGFloat(1)
    @State private var degrees = 0.0
    private var languageList = ["Swift", "Objective-C", "C"]
    @State private var selection = 1


    private let text = """
                            Hello my name is Sascha Sallès I'm a third year student of computer engineering 🎓 \n\nI've had a great passion for computers since I was a child.\n\nIn 2018 I chose to join the university Ingésup because it is one of the universities that appear on the Apple keynote. \n\nApple has contributed to make my passion for computer science more intense. Integrating Apple and evolving with them is therefore my long term goal.
                            """
    var body: some View {
        NavigationView {
            ScrollView {
                GradientView {
                    Picker(selection: $selection, label: Text("Picker")) {
                        Text("Avatar")
                            .tag(1)
                        Text("Introducing")
                            .tag(2)

                    }
                        .pickerStyle(SegmentedPickerStyle())
                        .labelsHidden()
                        .padding()

                    if self.selection == 1 {
                        ZStack {
                            if self.showRealImage {
                                MapView()
                            }

                            VStack {
                                Button(action: {
                                    self.showRealImage.toggle()

                                    withAnimation(Animation.easeOut) {
                                        self.degrees += 360
                                    }
                                }, label: {
                                    if self.showRealImage {
                                        Image("me-real")
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Circle())
                                            .parallax(amount: 15, direction: .horizontal)
                                    } else {
                                        Image("me-sticker")
                                            .resizable()
                                            .background(Color(.tertiarySystemBackground))
                                            .scaledToFit()
                                            .clipShape(Circle())
                                            .parallax(amount: 15, direction: .horizontal)
                                    }
                                })
                                    .frame(width: 130, height: 130)
                                    .shadow(color: showRealImage ? Color(.systemIndigo) : Color(.systemGray), radius: 2)
                                    .rotation3DEffect(.degrees(degrees), axis: (x: 0, y: 1, z: 0))

                                    .buttonStyle(CustomButtonStyle())




                                Text("iOS Developer ")
                                    .font(Font.system(.title3, design: .rounded))
                                    .bold()

                                Text("From Bordeaux")
                                    .font(Font.system(.body, design: .rounded))

                            }.padding()

                        }
                    }
                    else if selection == 2 {
                        Text(self.text)
                            .font(Font.system(.body, design: .serif))
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                }
            }
                .navigationBarTitle("About Me")
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}



