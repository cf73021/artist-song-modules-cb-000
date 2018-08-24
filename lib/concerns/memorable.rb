module Memorable

  module ClassMethods
    def self.reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
  end

end
