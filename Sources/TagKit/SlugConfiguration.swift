//
//  SlugConfiguration.swift
//  TagKit
//
//  Created by Daniel Saidi on 2022-08-18.
//  Copyright © 2022-2024 Daniel Saidi. All rights reserved.
//

import Foundation

/// This configuration defines how ``Slugifiable`` types are
/// slugified.
///
/// The standard configuration allows `a-z0-9`, and will for
/// instance slugify `Hello, world!` into `hello-world`.
public struct SlugConfiguration {

    /// Create a new slug configurator.
    ///
    /// - Parameters:
    ///   - separator: The separator to use in the slugified string, by default `-`.
    ///   - allowedCharacters: The characters to allow in the slugified string, by default `a-z0-9`.
    public init(
        separator: String = "-",
        allowedCharacters: String = "abcdefghijklmnopqrstuvwxyz0123456789"
    ) {
        let chars = allowedCharacters + separator
        self.separator = separator
        self.allowedCharacters = chars
        let allowedSet = NSCharacterSet(charactersIn: chars)
        self.allowedCharacterSet = allowedSet
        self.notAllowedCharacterSet = allowedSet.inverted
    }

    /// The separator to use in the slugified string.
    public let separator: String

    /// The characters to allow in the slugified string.
    public let allowedCharacters: String
    
    /// The characters to allow in the slugified string.
    public let allowedCharacterSet: NSCharacterSet
    
    /// The characters to not allow in the slugified string.
    public let notAllowedCharacterSet: CharacterSet
}

public extension SlugConfiguration {

    /// A standard slug configuration, with `-` as component
    /// separator and `a-zA-Z0-9` as allowed characters.
    static var standard: SlugConfiguration { .init() }
}
