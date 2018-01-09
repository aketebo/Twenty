//
//  StatCollectionViewCell.swift
//  Twenty
//
//  Created by Amanuel Ketebo on 3/15/17.
//  Copyright © 2017 Amanuel Ketebo. All rights reserved.
//

import UIKit

class StatCollectionViewCell: UICollectionViewCell
{
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var averagePoints: UILabel!
    @IBOutlet weak var averageFouls: UILabel!
    @IBOutlet weak var averageTechs: UILabel!
    @IBOutlet weak var record: UILabel!
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        layer.borderColor = UIColor.slightlyGray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 5
        clipsToBounds = true
        backgroundColor = .slightlyLightBlack
    }
    
    func configureCell(with averageStat: AverageStats)
    {
        name.text = averageStat.name
        averagePoints.text = String(averageStat.points)
        averageFouls.text = String(averageStat.fouls)
        averageTechs.text = String(averageStat.techs)
        record.text = "\(String(averageStat.gamesWon))-\(String(averageStat.gamesLost))"
    }
}
