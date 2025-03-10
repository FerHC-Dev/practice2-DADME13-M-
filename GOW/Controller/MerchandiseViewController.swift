//
//  MerchandiseViewController.swift
//  GOW_Practice
//
//  Created by Fernando Hernández on 09/03/25.
//

import UIKit

class MerchandiseViewController: UIViewController {
    
    @IBOutlet weak var merchandiseCollection: UICollectionView!
    
    let merchandise: [Merchandise] = [
        Merchandise(image: "arms glass", name: "merchandise.name.m1"),
        Merchandise(image: "canteen", name: "merchandise.name.m2"),
        Merchandise(image: "card game", name: "merchandise.name.m3"),
        Merchandise(image: "cilinder", name: "merchandise.name.m4"),
        Merchandise(image: "e-day shirt", name: "merchandise.name.m5"),
        Merchandise(image: "gear glass", name: "merchandise.name.m6"),
        Merchandise(image: "gear hat", name: "merchandise.name.m7"),
        Merchandise(image: "gear shirt", name: "merchandise.name.m8"),
        Merchandise(image: "marcus figure", name: "merchandise.name.m9"),
        Merchandise(image: "train shirt", name: "merchandise.name.m10"),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        merchandiseCollection.delegate = self
        merchandiseCollection.dataSource = self

        // Do any additional setup after loading the view.
    }
    
}

extension MerchandiseViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return merchandise.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! MerchandiseCell
        
        let merchan = merchandise[indexPath.row]
        
        cell.mImage.image = UIImage(named: merchan.image)
        cell.mTitle.text = merchan.name.localized
        
        return cell
    }
}
