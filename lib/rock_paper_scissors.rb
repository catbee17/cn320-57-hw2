#บัณฑิตา อวยชัยเจริญ 5510613234
#ชมพูนิกข์ ประการแก้ว 55106133
class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    p1 = player1.last
    p2 = player2.last
    #unless RPS.include?(p1) && RPS.include?(p2)
    if (p1!="R"and p1!="S"and p1!="P")||(p2!="R"and p2!="S"and p2!="P")
      raise NoSuchStrategyError, "Strategy must be one of R,P,S",caller
    end
    if p1==p2
      return player1
    end
    if p1=="R"
      if p2=="P"
        return player2
      end
      return player1
    end
    if p1=="S"
      if p2=="R"
        return player2
      end
      return player1
    end
    if p1=="P"
      if p2=="S"
        return player2
      end
      return player1
    end
  end



  def self.tournament_winner(tournament)
    if tournament[0][0].class == String
         return winner(tournament[0],tournament[1])
    end
    
    w1=tournament_winner(tournament[0])
    w2=tournament_winner(tournament[1])
    w3=winner(w1,w2)
    return w3
  end
end