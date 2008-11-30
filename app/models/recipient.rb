# == Schema Information
# Schema version: 20081025020017
#
# Table name: recipients
#
#  id         :integer(11)     not null, primary key
#  name       :string(255)
#  amount     :decimal(14, 2)
#  period     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Recipient < ActiveRecord::Base
  validates_presence_of :name, :period
  validates_uniqueness_of :name
  validates_numericality_of :amount
  validate :amount_must_be_at_least_a_cent
  validates_format_of :period,
                      :with => %r{(daily|weekly|monthly)$}i,
                      :message => 'must be one of the default values for period (daily, weekly, monthly)'
  
protected
  def amount_must_be_at_least_a_cent
    errors.add(:amount, 'should be at least 0.01') if amount.nil? || amount < 0.01 
  end
end
