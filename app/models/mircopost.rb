class Mircopost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  
  
 validates :content, :presense = > true
                     :length => {:maximum => 150}
                     
  default_scope :order => 'microposts.create_at DESC'
end