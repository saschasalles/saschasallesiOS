//
//  MailView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 08/03/2021.
//

import UIKit
import MessageUI
import SwiftUI

struct MailView: UIViewControllerRepresentable {

  @Binding var isShowing: Bool
  @Binding var result: Result<MFMailComposeResult, Error>?

  class Coordinator: NSObject, MFMailComposeViewControllerDelegate {

    @Binding var isShowing: Bool
    @Binding var result: Result<MFMailComposeResult, Error>?

    init(isShowing: Binding<Bool>,
         result: Binding<Result<MFMailComposeResult, Error>?>) {
      _isShowing = isShowing
      _result = result
    }

    func mailComposeController(_ controller: MFMailComposeViewController,
                               didFinishWith result: MFMailComposeResult,
                               error: Error?) {
      defer {
        isShowing = false
      }
      guard error == nil else {
        self.result = .failure(error!)
        return
      }
      self.result = .success(result)

    }
  }

  func makeCoordinator() -> Coordinator {
    return Coordinator(isShowing: $isShowing,
                       result: $result)
  }

  func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
    let viewController = MFMailComposeViewController()
    viewController.mailComposeDelegate = context.coordinator
    viewController.setToRecipients(["saschasalles.website@gmail.com"])
    viewController.setSubject("✉️ Sascha's App")
    return viewController
  }

  func updateUIViewController(_ uiViewController: MFMailComposeViewController,
                              context: UIViewControllerRepresentableContext<MailView>) {

  }
}
