  func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {
      let HOME_TEAM_WON = 1
      var bestTeam: String = ""
      var scores = [String: Int]()
      scores[bestTeam] = 0

      for (i, competition) in competitions.enumerated(){
          let result = results[i]
          let (homeTeam, awayTeam) = (competition[0], competition[1])

          var winningTeam = result == HOME_TEAM_WON ? homeTeam : awayTeam

          if scores[winningTeam] == nil{
              scores[winningTeam] = 3
          }else{
              scores[winningTeam]! += 3
          }

          if scores[winningTeam]! > scores[bestTeam]!{
              bestTeam = winningTeam
          }
      }
      return bestTeam
  }