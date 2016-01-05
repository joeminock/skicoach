class Task < ActiveRecord::Base
  belongs_to :project

  validates :title, presence: true, length: {maximum: 75}
  validates :video, presence: true
  validates :tag, presence: true
  validates :project, presence: true
end
