//
//  GameRowController.swift
//  FifaWWC2019 WatchKit Extension
//
//  Created by Mithun Madhav on 02/07/19.
//  Copyright © 2019 Inommation. All rights reserved.
//

import UIKit
import WatchKit

class GameRowController: NSObject {

    @IBOutlet weak var teamALabel: WKInterfaceLabel!
    @IBOutlet weak var teamAFlagLabel: WKInterfaceLabel!
    @IBOutlet weak var teamBFlagLabel: WKInterfaceLabel!
    @IBOutlet weak var teamBLabel: WKInterfaceLabel!
    @IBOutlet weak var locationLabel: WKInterfaceLabel!
    @IBOutlet weak var dateLabel: WKInterfaceLabel!
    
    static let dateFormatter = DateFormatter()
    
    var game: Game? {
        didSet {
            guard let game = game else {
                return
            }
            
            teamALabel.setText(game.teamA)
            teamBLabel.setText(game.teamB)
            teamAFlagLabel.setText(self.getTeamFlag(for: game.teamA))
            teamBFlagLabel.setText(self.getTeamFlag(for: game.teamB))
            locationLabel.setText("\(game.stadium) \(game.city)")
            GameRowController.dateFormatter.dateFormat = "dd-MMM HH:mm"
            dateLabel.setText(GameRowController.dateFormatter.string(from: game.date!))
        }
    }
    
    private func getTeamFlag(for team: String) -> String {
        
        if(team == "Norway"){
            return "🇳🇴"
        }
        else if(team == "Netherlands"){
            return "🇳🇱"
        }
        else if(team == "England"){
            return "🏴󠁧󠁢󠁥󠁮󠁧󠁿"
        }
        else if(team == "France"){
            return "🏴󠁧󠁢󠁥󠁮󠁧󠁿"
        }
        else if(team == "USA"){
            return "🇺🇸"
        }
        else if(team == "Italy"){
            return "🇮🇹"
        }
        else if(team == "Germany"){
            return "🇩🇪"
        }
        else if(team == "Sweden"){
            return "🇸🇪"
        }
        return "\u{2700}"
    }
    
}
