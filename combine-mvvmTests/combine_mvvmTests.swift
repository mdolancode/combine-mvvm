//
//  combine_mvvmTests.swift
//  combine-mvvmTests
//
//  Created by Matthew Dolan on 2023-01-31.
//

import XCTest
import Combine
@testable import combine_mvvm

final class combine_mvvmTests: XCTestCase {
    
    var sut: QuoteViewModel!
    var quoteService: MockQuoteServiceType!

    override func setUp() {
        sut = QuoteViewModel(quoteServiceType: quoteService)
    }

    override func tearDown() {
    }
}

class MockQuoteServiceType: QuoteServiceType {
    var value: AnyPublisher<Quote, Error>?
    func getRandomQuote() -> AnyPublisher<Quote, Error> {
        return value ?? Empty().eraseToAnyPublisher()
    }
}
