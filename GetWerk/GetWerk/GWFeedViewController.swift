//
//  GWFeedViewController.swift
//  GetWerk
//
//  Created by Razvan Armeanu on 16/10/2018.
//  Copyright © 2018 Razvan. All rights reserved.
//

import UIKit

class GWFeedViewController: UIViewController {
    
    @IBOutlet var feedCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedCollectionView.delegate = self
        feedCollectionView.dataSource = self
        feedCollectionView.register(UINib( nibName: "GWFeedCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FeedCell")
    }


}

extension GWFeedViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = feedCollectionView.dequeueReusableCell(withReuseIdentifier: "FeedCell", for: indexPath) as! GWFeedCollectionViewCell
        
        return cell
    }
    
    
}

