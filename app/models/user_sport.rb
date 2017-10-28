class UserSport
  include Mongoid::Document

  field :name, type: String
  field :experience_time, type: Integer
  field :like_calification, type: Float
  field :ability, type: Float

  belongs_to :user


end
