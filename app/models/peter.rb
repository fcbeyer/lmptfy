class Peter < ActiveRecord::Base
  attr_accessible :email, :name, :active
  
  def self.all_the_peters
    #get all the peters email addresses and return as a list for the "to" field on the email
    list = []
    Peter.select(:email).where(:active => true).all.each {|x| list.push(x.email)}
    return list.join(" ")
  end
  
  def self.random_peter
    num = Random.new.rand(1..Peter.last.id)
    return Peter.find(num).email
  end
end
