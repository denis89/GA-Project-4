class Ad < ActiveRecord::Base
   validates :title, :category, presence: true,
                    length: { minimum: 5 }
end