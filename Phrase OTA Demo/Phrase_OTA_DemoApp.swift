//
//  Phrase_OTA_DemoApp.swift
//  Phrase OTA Demo
//
//  Created by Patrick Hampel on 23.08.21.
//

import SwiftUI
import PhraseSDK

@main
struct Phrase_OTA_DemoApp: App {
    init() {
        Phrase.shared.setup(
          distributionID: "",
          environmentSecret: ""
          // timeout: 10.0,
          // localeOverride: "de"
        )
        do {
            try Phrase.shared.updateTranslations { result in
                switch result {
                case .success(_):
                    print("Translation download successful.")
                case .failure:
                    print("Translation download failed.")
                }
            }
        } catch {
            print("An error occurred.")
        }
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
