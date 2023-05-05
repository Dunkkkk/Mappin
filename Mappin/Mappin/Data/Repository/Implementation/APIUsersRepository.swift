//
//  APIUsersRepository.swift
//  Mappin
//
//  Created by byo on 2023/05/05.
//

import Foundation
import Moya

struct APIUsersRepository: UsersRepository {
    private let provider = APIProvider()
    
    func signup(username: String, password: String) async throws -> DTO.User {
        let parameters = UsersSignupAPITarget.Parameters(username: username, password: password)
        let target = APITarget.signupUser(parameters: parameters)
        return try await provider.requestResponsable(target)
    }
    
    func login(username: String, password: String) async throws -> String {
        let parameters = UsersLoginAPITarget.Parameters(username: username, password: password)
        let target = APITarget.loginUser(parameters: parameters)
        return try await provider.requestResponsable(target).token
    }
}
