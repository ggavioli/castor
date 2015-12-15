# app/models/book.rb
class Book < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: {
    message: "Le titre doit être renseigné."
  }

  validates :title, uniqueness: {
    message: "Ce titre est déjà pris."
  }
    
    scope :french, -> { where(category_id: 1) }
    scope :english, -> { where(category_id: 2) }
end
