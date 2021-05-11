class User < ApplicationRecord
  include Visible

  has_many :articles, dependent: :destroy
    has_many :comments, dependent: :destroy


  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  end
