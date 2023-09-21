class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true # para rails < 7 en ves de  primary_abstract_class
end
