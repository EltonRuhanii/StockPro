//
//  FirebaseProvider.swift
//  StockPro
//
//  Created by WIZZARD on 6.8.25.
//

import FirebaseCore
import FirebaseAuth

public class FirebaseProvider {

    public static var auth: Auth = .auth()

    static public func configureFirebase() {
        FirebaseApp.configure() // Initializes Firebase with the default settings.
    }
}
