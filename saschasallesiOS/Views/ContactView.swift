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
    @State var result: Result<MFMailComposeResult, Error>? = nil
    
    var body: some View {
        GradientView {
            VStack {
                if MFMailComposeViewController.canSendMail() {
                    Button("Show mail view") {
                        self.isShowingMailView.toggle()
                    }
                } else {
                    Text("Can't send emails from this device")
                }
            }
                .sheet(isPresented: $isShowingMailView) {
                MailView(isShowing: self.$isShowingMailView, result: self.$result)
            }

        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
