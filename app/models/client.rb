class Client < ActiveRecord::Base
  belongs_to :banner
  has_many :traces
  has_many :companies, :through => :traces

  def self.exist_by_name? name
    return true unless self.where('name LIKE ?', '%' + name + '%').empty? #self.find_by_name(name.downcase)
    return false
  end

  def self.clients_suggested name
    self.where('name LIKE ?', '%' + name + '%')
  end

end
