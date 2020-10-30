class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true

  enum status: [:prestado, :en_biblioteca]
  enum gener: [:ciencia_ficción, :fantasia]

  paginates_per 50
end