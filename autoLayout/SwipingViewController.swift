//
//  SwipingViewController.swift
//  autoLayout
//
//  Created by Somsak Kaeworasan on 5/7/2564 BE.
//

import UIKit

class SwipingViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func prevTouch(_ sender: Any) {
        
    }
    
    @IBAction func nextTouch(_ sender: Any) {
        let nextIndex = pageControl.currentPage + 1
        let indexPath = IndexPath(item: nextIndex, section: 0)
        pageControl.currentPage = nextIndex
        self.collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
}

extension SwipingViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let swipingCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "swipingCell", for: indexPath) as! SwipingCollectionViewCell
            
        swipingCollectionViewCell.backgroundColor = indexPath.item % 2 == 0 ? .red : .green
            
        return swipingCollectionViewCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: self.collectionView.frame.height)
    }
}
