# == Schema Information
#
# Table name: route_comment_relationships
#
#  id           :integer          not null, primary key
#  commenter_id :integer
#  route_id     :integer
#  text         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class RouteCommentRelationship < ActiveRecord::Base
  attr_accessible :commenter_id, :route_id, :text
  
  belongs_to :commenter, class_name: "User"
  belongs_to :route_comment, class_name: "Route"
  
  validates :commenter_id, presence: true
  validates :route_id, presence: true
  validates :text, presence: true
  validates :text, length: { maximum: 250 }
end
