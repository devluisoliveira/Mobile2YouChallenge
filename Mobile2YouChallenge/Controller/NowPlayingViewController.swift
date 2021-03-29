//
//  NowPlayingViewController.swift
//  Mobile2YouChallenge
//
//  Created by DevLuis on 28/03/21.
//

import UIKit

private let reuseIdentifier = "MovieCell"

class NowPlayingViewController: UICollectionViewController {
    //MARK: - Properties
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //MARK: - API
    
    //MARK: - Selectors
    
    //MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .white
        collectionView.register(MovieCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.backgroundColor = .black
        title = "Now Playing"
    }
}

//MARK: - UICollectionViewDelegate/DataSource
extension NowPlayingViewController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return movies.count
    //}
    
    //override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    //}
}
