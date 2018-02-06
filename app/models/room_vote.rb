class RoomVote < ApplicationRecord
  after_create :check_vote

  def check_vote
    room = Room.find(self.room_id)
    passes = RoomVote.where(room_id: self.room_id, vote_type: self.vote_type, has_agreed: true)
    if passes.size > room.user_count / 2
      pass_vote(self)
    end
  end

  def pass_vote(vote)
    case vote.vote_type
      when 'kick'
        kick_user(vote)
      when 'skip'
        skip_turn(vote)
    end
  end

  def kick_user(vote)

  end

  def skip_turn(vote)

  end
end
