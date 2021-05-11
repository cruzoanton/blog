class Article < ApplicationRecord
  include Visible
  #belongs_to :user

    has_many :comments, dependent: :destroy
    has_many :commenters, through: :comments, source: :user
    has_many :unique_commenters, -> { distinct }, through: :comments, source: :user

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  end
