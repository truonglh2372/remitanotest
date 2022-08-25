require 'uri'

class Article < ApplicationRecord
  belongs_to :user
  before_validation :set_youtube_id_from_description

  def set_youtube_id_from_description
    reg_exp = %r{^.*((youtu.be/)|(v/)|(/u/\w/)|(embed/)|(watch\?))\??v?=?([^#&?]*).*}
    urls_from_description = URI.extract(description)
    self.youtube_id = urls_from_description[0].split(reg_exp).last if urls_from_description.size.positive?
  end
end
