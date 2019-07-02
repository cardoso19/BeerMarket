//
//  BeerListInteractor.swift
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

protocol BeerListBusinessLogic {
    func doBeerList()
    func doSelectBeer(request: BeerList.Selection.Request)
    func doImage(request: BeerList.Image.Request)
}

protocol BeerListDataStore {
    var selectedBeer: Beer? { get set }
    var beers: [Beer] { get set }
    var page: Int { get set }
}

class BeerListInteractor: BeerListBusinessLogic, BeerListDataStore {
    
    // MARK: - Variables
    var presenter: BeerListPresentationLogic?
    var worker = BeerListWorker()
    var selectedBeer: Beer?
    var beers: [Beer] = []
    var page: Int = 1
    
    // MARK: - Beer
    func doBeerList() {
        worker.requestBeerList(request: BeerList.BeerModel.Request(page: page)) { (result) in
            switch result {
            case .success(let beers):
                self.beers.append(contentsOf: beers)
                self.page += 1
                self.presenter?.presentBeers(response: BeerList.BeerModel.Response(newBeers: beers))
            case .failure(let error):
                self.presenter?.presentError(response: BeerList.ErrorModel.Response(error: error))
            }
        }
    }
    
    func doSelectBeer(request: BeerList.Selection.Request) {
        selectedBeer = beers[request.row]
    }
    
    func doImage(request: BeerList.Image.Request) {
        worker.requestImage(request: request) { result in
            switch result {
            case .success(let image):
                self.presenter?.presentImage(response: BeerList.Image.Response(row: request.row,
                                                                               image: image))
            case .failure(let error):
                self.presenter?.presentError(response: BeerList.ErrorModel.Response(error: error))
            }
        }
    }
}
