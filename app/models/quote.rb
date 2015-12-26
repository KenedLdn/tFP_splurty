class Quote < ActiveRecord::Base
  validates :saying, :presence => true, :length => {:minimum => 3, :maximum => 140}
  validates :author, :presence => true, :length => {:minimum => 2, :maximum => 50}

  def unique_tag
    initials = self.author.split(" ").collect {|sub_string| sub_string[0]}.join
    "#{initials}\##{self.id}"
  end
end
