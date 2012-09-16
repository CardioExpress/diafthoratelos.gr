class Incident < ActiveRecord::Base
  attr_accessible :description
  attr_accessible :incident_date
  attr_accessible :money_asked
  attr_accessible :money_given
  attr_accessible :public_entity_id
  attr_accessible :place_id
  attr_accessible :approval_status

  APPROVED_STATUS = "approved"
  REJECTED_STATUS = "rejected"
  PENDING_STATUS = "pending"

  ALL_APPROVAL_STATUSES = [APPROVED_STATUS, REJECTED_STATUS, PENDING_STATUS]

  validates_inclusion_of :approval_status, :in => ALL_APPROVAL_STATUSES
  
  belongs_to :public_entity
  belongs_to :place
  
  def public_entiry_name
    public_entity.name
  end
  
end
