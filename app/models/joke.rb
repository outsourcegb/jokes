class Joke < ApplicationRecord
  belongs_to :user

  validates_presence_of :content 

  acts_as_votable

  paginates_per 10

  acts_as_taggable_on :tags

  before_create :default_values

  scope :published, -> { where(active: true) }

  def default_values
    self.active ||= false
  end
end
