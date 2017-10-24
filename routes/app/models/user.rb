# == Schema Information
#
# Table name: users
#
#  id       :integer          not null, primary key
#  username :string           not null
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artworks,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: 'Artwork'

  has_many :viewers,
    foreign_key: :viewer_id,
    primary_key: :id,
    class_name: 'ArtworkShare'

  has_many :shared_artworks,
    through: :artworks,
    source: :artwork_shares
end
