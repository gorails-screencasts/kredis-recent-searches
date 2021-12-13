class User < ApplicationRecord
  kredis_unique_list :recent_searches, limit: 5
end
