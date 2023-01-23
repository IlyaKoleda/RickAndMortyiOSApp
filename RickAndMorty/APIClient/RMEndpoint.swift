//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Илья on 23.01.2023.
//

import Foundation

/// Represents uniqe API endpoint
@frozen enum RMEndpoint: String{
    ///Endpoint to get character info
    case character
    ///Endpoint to get location info
    case location
    ///Endpoint to get episode info
    case episode
}
