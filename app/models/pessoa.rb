class Pessoa < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :user_id
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
  
  validate :eh_email

  private
    def eh_email
      errors.add(:email, " is not an valid email") unless email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    end
end
