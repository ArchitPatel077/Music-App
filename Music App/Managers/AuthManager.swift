//
//  AuthManager.swift
//  AuthManager
//
//  Created by Archit Patel on 2021-10-03.
//

import UIKit

final class AuthManager {
    
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "9be922ec829d4400a6e3e1a90daceaf9"
        static let clientSecret = "c0efd6eac4ef407199b44b845769d06f"
    }
    
    private init() {}
    
    public var signInURL : URL? {
        let scopes = "user-read-private"
        let redirectURL = "https://www.spotify.com/ca-en/"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURL)&show_dialog=TRUE"
        return URL(string: string)
    }
    
    //Computed Properties
    var isSignedIn : Bool {
        return false
    }
    
    private var accessToken : String? {
        return nil
    }
    
    private var refreshToken : String? {
        return nil
    }
    
    private var tokenExpirationDate : Date? {
        return nil
    }
    
    private var shouldRefreshToken : Bool {
        return false
    }
    
}
