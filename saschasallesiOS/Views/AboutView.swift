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

  private let text =
    """
        Hello my name is Sascha Sallès.
        I'm a third year student of computer engineering\n
        I've had a great passion for computers
        since I was a child.\n
        In 2018 I chose to join the university
        Ingésup because it is one of the universities
        that appear on the Apple keynote.\n
        Apple has contributed to make my passion
        for computer science more intense.
        Integrating Apple and evolving with them is
        therefore my long term goal.
        """

  var body: some View {
    NavigationView {
      GeometryReader { geo in
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

                } else {
                  VStack(spacing: 50) {
                    HStack {
                      Text("Swift")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color(.systemGray4))
                        .rotationEffect(.degrees(15))
                      Spacer()
                      Text("Obj-C")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color(.systemGray4))
                        .rotationEffect(.degrees(345))
                    }.padding(.horizontal)
                    HStack {
                      Text("Vapor")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color(.systemGray4))
                        .rotationEffect(.degrees(345))
                      Spacer()
                      Text("Python")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color(.systemGray4))
                        .rotationEffect(.degrees(15))

                    }.padding(.horizontal)
                  }
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
                        .parallax(amount: 25, direction: .horizontal)
                    } else {
                      Image("me-sticker")
                        .resizable()
                        .background(Color(.tertiarySystemBackground))
                        .scaledToFit()
                        .clipShape(Circle())
                        .parallax(amount: 25, direction: .horizontal)
                    }
                  })
                    .frame(width: 130, height: 130)
                    .shadow(color: showRealImage ? Color(.systemIndigo) : Color(.systemGray), radius: 2)
                    .rotation3DEffect(.degrees(degrees), axis: (x: 0, y: 1, z: 0))

                    .buttonStyle(CustomButtonStyle())

                  Text("iOS Engineer ")
                    .font(Font.system(.title3, design: .rounded))
                    .bold()
                    .padding(.top)

                  Text("From Bordeaux")
                    .font(Font.system(.body, design: .rounded))
                }.padding()

              }
            } else if selection == 2 {
              Text(self.text)
                .font(Font.system(.body))
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
                .fixedSize(horizontal: false, vertical: true)
                .padding()
              Spacer()
            }
          }

          VStack(alignment: .leading) {
            Text("Education")
              .font(.title2)
              .bold()
              .padding(.top, 20)
              .padding(.leading)
              .padding(.bottom, -25)

            ScrollView(.horizontal, showsIndicators: false) {
              HStack(spacing: 22) {
                StudiesCardView(
                  size: geo.size.width - 120,
                  image: "ingesup",
                  title: "Ingésup Bordeaux",
                  year: "2018 to 2023",
                  degree: "Master of Science",
                  description: "Computer Engineering")
                StudiesCardView(
                  size: geo.size.width - 120,
                  image: "lycee",
                  title: "Lycée Sud des Landes",
                  year: "2018",
                  degree: "Scientific Baccalaureat",
                  description: "Computer Science spécialisation")
              }.padding(.horizontal, 20)
                .padding(.vertical, 35)
            }

          }

          LazyVStack(alignment: .leading) {
            HStack {
              Text("Experiences")
                .font(.title2)
                .bold()
                .padding(.vertical, 10)

              Spacer()
              Button(action: {
                print("all certificates")
              }, label: {
                Text("See All")
                  .padding(.horizontal, 10)
              })
            }

            LazyVStack(spacing: 10) {
              ExpListItem(title: "Thales Group", image: "thales")
              ExpListItem(title: "Thales Group", image: "thales")
            }
          }.padding(.horizontal)
            .padding(.top, -20)

          VStack(alignment: .leading) {
            HStack {
              Text("Pro Certificates")
                .font(.title2)
                .bold()
                .padding(.vertical)
              Spacer()
              Button(action: {
                print("all certificates")
              }, label: {
                Text("See All")
                  .padding(.horizontal, 10)
              })
            }

            VStack(spacing: 5) {
              CertificateListItem()
              CertificateListItem()
            }
          }.padding(.horizontal)

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
