class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  FLAG_IMAGES = {
  "chinese"  => "https://flagcdn.com/w80/cn.png",
  "italian"  => "https://flagcdn.com/w80/it.png",
  "japanese" => "https://flagcdn.com/w80/jp.png",
  "french"   => "https://flagcdn.com/w80/fr.png",
  "belgian"  => "https://flagcdn.com/w80/be.png"
}

  def flag_image
    FLAG_IMAGES[category]
  end
end
