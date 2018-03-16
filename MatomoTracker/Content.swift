//
//  Content.swift
//  MatomoTracker
//
//  Created by Benedikt Spohr on 16.03.18.
//  Copyright © 2018 Matomo. All rights reserved.
//

import Foundation

public struct Content {
    /// c_n — The name of the content. For instance 'Ad Foo Bar'
    let name: String
    /// c_p — The actual content piece. For instance the path to an image, video, audio, any text
    let contentPiece: String?
    /// c_t — The target of the content. For instance the URL of a landing page
    let target: String?
    /// c_i — The name of the interaction with the content. For instance a 'click'
    let interaction: String?
}
