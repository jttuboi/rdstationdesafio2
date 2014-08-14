class Pessoa < ActiveRecord::Base
  belongs_to :user

  validates :name, length: { maximum: 40 }
  validates :last_name, presence: true, length: { maximum: 80 }
  validate :eh_email
  validates :company, presence: true
  
  validates :user_id, presence: true
  validates_associated :user
  
  def self.new_from_lead(lead, user)
    create! do |pessoa|
      pessoa.name = lead.FirstName
      pessoa.last_name = lead.LastName
      pessoa.email = lead.Email
      pessoa.company = lead.Company
      pessoa.job_title = lead.Title
      pessoa.phone = lead.Phone
      pessoa.website = lead.Website
      pessoa.salesforce_id = lead.Id
      pessoa.user_id = user.id
    end
  end
 
  def eh_email
    if email != nil && !email.empty? # email pode ser vazio
      errors.add(:email, " is not an valid email") unless email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    end
  end
end
