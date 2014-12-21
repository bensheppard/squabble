class Dispute < ActiveRecord::Base
  validates :description, presence: true
  validates :argument_for, presence: true
  validates :argument_against, presence: true
end
