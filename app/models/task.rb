class Task < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  def should_generate_new_friendly_id?
    title_changed?
  end

  belongs_to :project

  validates :title, presence: true, length: {maximum: 75}
  validates :video, presence: true
  validates :project, presence: true

  def next
    project.tasks.where("tag > ? AND header = ?", tag, false).order(:tag).first
  end

  def prev
    project.tasks.where("tag < ? AND header = ?", tag, false).order(:tag).last
  end
end
