class Question < ApplicationRecord
  has_many :answers, :dependent => :destroy

  validates :title, presence: true, length: {minimum: 40}
  validates :description, presence: true, length: {minimum: 150}
end
