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
          // timeout: 10000,
          //localeOverride: "de"
        )
        do {
            try Phrase.shared.updateTranslations { result in
                switch result {
                case .success(_):
                    print("Translations download successful.")
                case .failure:
                    print("Translations download failed")
                }
            }
        } catch {
            print("error")
        }
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
