//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Rocha, Luis on 4/5/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
import AFNetworking


class RepoCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var starsImage: UIImageView!
    @IBOutlet weak var forksImage: UIImageView!
    
    
    var repo: GithubRepo! {
        didSet {
            nameLabel.text = repo.name
            descriptionLabel.text = repo.description
            ownerLabel.text = repo.ownerHandle
            starsLabel.text = "12345" //"\(String(describing: repo.stars))"
            forksLabel.text = "12" //"\(String(describing: repo.forks))"
            if let imageUrl = URL(string: repo.ownerAvatarURL!) {
                avatarImage.setImageWith(imageUrl)
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
