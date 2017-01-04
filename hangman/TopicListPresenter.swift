//
//  TopicListPresenter.swift
//  hangman
//
//  Created by ElderCMA on 04/01/17.
//  Copyright © 2017 Elder Dev. All rights reserved.
//

import UIKit


class TopicListPresenter: NSObject {

    private var view : TopicView?
    private var topics : [Topic]?
    
    func attachView(view:TopicView){
        self.view = view
    }
    
    func detachView() {
        self.view = nil
    }
    
    func loadTopics(){
        // TODO: get topics from WS
        let fruit = Topic()
        let apple = Word()
        apple.wordDescription = "Apple"
        fruit.words?.append(apple)
    }
    
    func getNumberOfLines(_: Void) -> Int {
        return (topics?.count)!
    }
    
    
}
