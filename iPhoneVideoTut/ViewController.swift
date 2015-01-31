//
//  ViewController.swift
//  iPhoneVideoTut
//
//  Created by Charles Hsu on 1/31/15.
//  Copyright (c) 2015 Loxoll. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {

  @IBOutlet weak var playVideoButton: UIButton!
  var moviePlayer: MPMoviePlayerController?
  
  @IBAction func playMovieButtonPressed(sender: UIButton) {
    println("playMovieButtonPressed")
    
    let movieURL = NSURL(string: "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
    // http://jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v
    
    // Initialize a movie player object with the specified URL
    moviePlayer = MPMoviePlayerController(contentURL: movieURL)
    
    moviePlayer?.view.frame = CGRect(x: 20, y: 100, width: 200, height: 150)
    
    self.view.addSubview(moviePlayer!.view)
    
    moviePlayer?.fullscreen = true
    
    moviePlayer?.controlStyle = MPMovieControlStyle.Embedded

    moviePlayer?.play()
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

