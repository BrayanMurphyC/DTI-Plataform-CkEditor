class Event < ApplicationRecord

  belongs_to :user
  before_save :number_views
  validates :photo, presence: true
  validates :cover, presence: true

  has_attached_file :cover, styles: { :medium => "900x600#" }
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  has_attached_file :photo, styles: { :medium => "300x200#" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def update_view_count
    self.update(view_count: self.view_count + 1)
  end



  private

  def number_views
    self.view_count ||= 0
  end

end
