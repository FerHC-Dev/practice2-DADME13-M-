//
//  GamesViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class GamesViewController: UIViewController {
    @IBOutlet weak var gameImage: UIImageView!
    
    @IBOutlet weak var imagePageControl: UIPageControl!
    
    @IBAction func rigthSwipeDone(_ sender: Any) {
        if imagePageControl.currentPage == 0 {
            imagePageControl.currentPage = 7
            gameImage.image = UIImage(named: gamePosters.last?.description ?? "0")
            setIndicatorImage()
        }else {
            imagePageControl.currentPage -= 1
            gameImage.image = UIImage(named: gamePosters[imagePageControl.currentPage].description)
            setIndicatorImage()
        }
        
    }
    
    @IBAction func leftSwipeDone(_ sender: Any) {
        
        if imagePageControl.currentPage == 7 {
            imagePageControl.currentPage = 0
            gameImage.image = UIImage(named: gamePosters.first?.description ?? "0")
            setIndicatorImage()
        }else {
            imagePageControl.currentPage += 1
            gameImage.image = UIImage(named: gamePosters[imagePageControl.currentPage].description)
            setIndicatorImage()
        }
    }
    //datasource :P
    let gamePosters = Array(0...7)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imagePageControl.numberOfPages = gamePosters.count
        gameImage.image = UIImage(named: gamePosters.first?.description ?? "0")
        setIndicatorImage()
    }
    
    func setIndicatorImage(){
        let defaultIndicator = UIImage(systemName: "circlebadge.fill")
        let currentIndicator = UIImage(named: "gow_logo")
        
        for i in gamePosters {
            imagePageControl.setIndicatorImage(defaultIndicator, forPage: i)
        }
        
        imagePageControl.setIndicatorImage(currentIndicator, forPage: imagePageControl.currentPage)
        
        //imagePageControl.pageIndicatorTintColor = .gowRed
        imagePageControl.currentPageIndicatorTintColor = .gowRed
    }
}
