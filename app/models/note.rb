class Note < ActiveRecord::Base
  belongs_to :chapter_id
  belongs_to :page_id
end
