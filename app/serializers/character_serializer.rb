class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :starbux, :marsbar, :lives, :current_state
  has_one :user
end
