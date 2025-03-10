//
//  CharactersViewController.swift
//  GOW_Practice
//
//  Created by Fernando Hernández on 09/03/25.
//

import UIKit

class CharactersViewController: UIViewController {
    
    let characters: [Character] = [
        Character(image: "Anthony", name: "Anthony Carmine"),
        Character(image: "Anya", name: "Anya Stroud"),
        Character(image: "Augustus", name: "Augustus Cole"),
        Character(image: "Damon", name: "Damon Baird"),
        Character(image: "Dominic", name: "Dominic Santiago"),
        Character(image: "Marcus", name: "Marcus Michael Fenix"),
        Character(image: "Minh", name: "Minh Young Kim"),
        Character(image: "RAAM", name: "RAAM")
    ]
    
    @IBOutlet weak var characterCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        characterCollection.delegate = self
        characterCollection.dataSource = self

        // Do any additional setup after loading the view.
    }
}

extension CharactersViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "characterCell", for: indexPath) as! CharactersCell
        
        let character = characters[indexPath.row]
        
        cell.cImage.image = UIImage(named: character.image)
        cell.cName.text = character.name
        
        return cell
    }
    
    
}
