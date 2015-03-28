class Article < ActiveRecord::Base
  has_many :steps
  accepts_nested_attributes_for :steps, reject_if: lambda {|attributes| attributes['body'].blank?}

  validate :only_three_steps

  def only_three_steps
    errors[:base] << "Only 3 steps are allowed" unless steps.size == 3
  end
end
