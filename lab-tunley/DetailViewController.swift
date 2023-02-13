//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!

    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!

    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()

        var x = "https://image.tmdb.org/t/p/w500"
        x += track.backdrop_path
        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: URL(string: "\(x)")!, into: trackImageView)
        trackNameLabel.text = track.title
        artistLabel.text = track.overview
        albumLabel.text = String(track.vote_average)
        genreLabel.text = String(track.vote_count)
        releaseDateLabel.text = String(track.popularity)
        

        // Create a date formatter to style our date and convert it to a string
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
//        releaseDateLabel.text = dateFormatter.string(from: track.releaseDate)

        // Use helper method to convert milliseconds into `mm:ss` string format
//        durationLabel.text = formattedTrackDuration(with: track.trackTimeMillis)

    }


}
