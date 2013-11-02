class Job < ActiveRecord::Base
  attr_accessible :name

  include AASM
  aasm do
    state :started, :initial => true
    state :completed

    event :complete do
      transitions from: :started, to: :completed
    end
  end
end
