class Comment < ApplicationRecord
  belongs_to :post

  validates :name, presence: true,
            length: { maximum: 50 },
            format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ }

  validates :text, presence: true
end
