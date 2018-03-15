//
//  UserAgent.swift
//  MatomoTracker
//
//  Created by Benedikt Spohr on 15.03.18.
//  Copyright © 2018 Matomo. All rights reserved.
//

import UIKit

struct UserAgent {

    static var uaString: String? {
        let webView = UIWebView(frame: CGRect.zero)
        return webView.stringByEvaluatingJavaScript(from: "navigator.userAgent")
    }
    
    static var screenSize: String {
        return "\(UIScreen.main.bounds.height)x\(UIScreen.main.bounds.width)"
    }
}
