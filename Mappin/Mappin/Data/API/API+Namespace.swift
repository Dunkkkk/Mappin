//
//  API+Namespace.swift
//  Mappin
//
//  Created by byo on 2023/05/04.
//

import Foundation
import Moya

enum API {
    typealias TargetType = Moya.TargetType
    typealias Method = Moya.Method
    typealias Task = Moya.Task
}

extension API.TargetType {
    var baseURL: URL {
        URL(string: "http://test.eba-abpsggka.ap-northeast-2.elasticbeanstalk.com/")!
    }
}