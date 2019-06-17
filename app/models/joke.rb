class Joke < ApplicationRecord
  belongs_to :user

  acts_as_votable

  paginates_per 2

  before_create :default_values

  scope :published, -> { where(active: true) }

  def default_values
    self.active ||= false
  end
end
