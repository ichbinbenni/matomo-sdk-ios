//
//  UserAgent.swift
//  MatomoTracker
//
//  Created by Benedikt Spohr on 15.03.18.
//  Copyright © 2018 Matomo. All rights reserved.
//

import UIKit

struct UserAgent {
    /// Attention! This string only works on iPhones!
    static var uaString: String? {
        //  - some : "Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E5211a"
        let webView = UIWebView(frame: CGRect.zero)
        guard var  userAgentString = webView.stringByEvaluatingJavaScript(from: "navigator.userAgent") else { return nil }
        
        userAgentString = userAgentString.replacingOccurrences(of: "iPhone;", with: (Device.humanReadablePlatformNameForCurrentDevice() ?? "iPhone") + ";")
        return userAgentString
    }
}
