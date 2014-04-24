class HintVote < ActiveRecord::Base
  belongs_to :user
  belongs_to :hint
end
