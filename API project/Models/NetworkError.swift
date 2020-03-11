//
//  NetworkError.swift
//  API project
//
//  Created by Egor Syrtcov on 3/11/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case failInternetError
    case noInternetConnection
}
