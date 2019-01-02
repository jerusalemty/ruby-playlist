class Song < ActiveRecord::Base
    validates :artist, :title, presence: true, length: { minimum: 2}
   
    has_many :playlists, dependent: :destroy
   
    has_many :users, through: :playlists, source: :user
end
