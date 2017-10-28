class Like
  include Mongoid::Document
  field :name, type: String
  field :like, type: Float

  belongs_to :user

  # validate :name_from_hobbies
  #
  # private
  # def name_from_hobbies
  #   if name != "basket"
  #     errors.add(:name, "cannot be any name")
  #
  #   end
  # end
end
