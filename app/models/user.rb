class User < ApplicationRecord
  include Visible

  has_many :articles, dependent: :destroy
    has_many :comments, dependent: :destroy

  validates :name, presence: true

  end
