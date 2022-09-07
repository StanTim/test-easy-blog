class Comment < ApplicationRecord
  belongs_to :post

  validates :name, presence: true,
            length: { maximum: 50 },
            format: { with: /\A[a-zA-Z]+\z/ }

  validates :text, presence: true
end
