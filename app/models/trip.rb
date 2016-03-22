class Trip < ActiveRecord::Base
  has_many :infos

  def name
  end

  def start
  end

  def end
  end

  def self.by_name
    order(:name)
  end

end
