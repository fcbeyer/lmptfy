class Peter < ActiveRecord::Base
  attr_accessible :email, :name, :active
  
  def self.all_the_peters
    #get all the peters email addresses and return as a list for the "to" field on the email
    return Peter.select(:email).where(:active => true).all
  end
end
