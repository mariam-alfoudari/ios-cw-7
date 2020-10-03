//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by mariam alfoudari on 10/3/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var moviePg: UILabel!
    @IBOutlet weak var movieRt: UILabel!
    @IBOutlet weak var movieYear: UILabel!
    @IBOutlet weak var actor1: UIImageView!
    @IBOutlet weak var actor1Lbl: UILabel!
    @IBOutlet weak var actor2: UIImageView!
    @IBOutlet weak var actor2Lbl: UILabel!
    @IBOutlet weak var actor3: UIImageView!
    @IBOutlet weak var actor3Lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
setMovieDetails()
        // Do any additional setup after loading the view.
    }
    func setMovieDetails(){
        let movie = MarvelMovieData[0]
        movieImg.image = UIImage(named: movie.movieName)
        moviePg.text = movie.pgRating
        movieRt.text = "\(movie.rating)"
        movieYear.text = "\(movie.movieReleaseDate)"
        actor1.image = UIImage(named: movie.actors[0])
        actor2.image = UIImage(named: movie.actors[1])
        actor3.image = UIImage(named: movie.actors[2])
        actor1Lbl.text =  movie.actors[0]
        actor2Lbl.text =  movie.actors[1]
        actor3Lbl.text =  movie.actors[2]
        
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
