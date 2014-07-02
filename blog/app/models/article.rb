class Article < ActiveRecord::Base

	has_many :comments, dependent: :destroy

	has_attached_file :image

	validates :title, presence: true,
                    length: { minimum: 5 }
end
