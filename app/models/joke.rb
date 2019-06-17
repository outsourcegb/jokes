class Joke < ApplicationRecord
  belongs_to :user

  validates_presence_of :content 

  acts_as_votable
  acts_as_taggable

  paginates_per 10

  before_create :default_values

  scope :published, -> { where(active: true) }

  def default_values
    self.active ||= false
  end
end
