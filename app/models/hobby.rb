class Hobby
  include Mongoid::Document
  field :name, type: String
  field :like, type: Float
  belongs_to :user

end
