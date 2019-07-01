//
//  BeerDetailInteractor.swift
//  BeerMarket
//
//  Created by Matheus Cardoso kuhn on 01/07/19.
//  Copyright (c) 2019 MDT. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol BeerDetailBusinessLogic {
    func doSomething(request: BeerDetail.Something.Request)
}

protocol BeerDetailDataStore {
    //var name: String { get set }
}

class BeerDetailInteractor: BeerDetailBusinessLogic, BeerDetailDataStore {
    
    // MARK: - Variables
    var presenter: BeerDetailPresentationLogic?
    var worker: BeerDetailWorker?
    //var name: String = ""
    
    // MARK: - Do something
    func doSomething(request: BeerDetail.Something.Request) {
        worker = BeerDetailWorker()
        worker?.doSomeWork()
        
        let response = BeerDetail.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
