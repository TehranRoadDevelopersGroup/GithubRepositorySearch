//
//  SearchQueryTests.swift
//  GithubRepositorySearchTests
//
//  Created by 김효성 on 12/22/24.
//

import Testing
@testable import GithubRepositorySearch

struct SearchQueryTests {
  @Test func testSearchQueryThenEqualInput() async throws {
    let input = "안녕하세요"
    
    let searchQuery = SearchQuery(input)
    
    #expect(searchQuery?.wrappedValue == input)
  }
  
  @Test func testSearchQueryThenNil() async throws {
    let input = ""
    
    let searchQuery = SearchQuery(input)
    
    #expect(searchQuery?.wrappedValue == nil)
  }
}
