class Pessoa < ActiveRecord::Base
  def self.new_from_lead(lead)
    create! do |pessoa|
      pessoa.name = lead.FirstName
      pessoa.last_name = lead.LastName
      pessoa.email = lead.Email
      pessoa.company = lead.Company
      pessoa.job_title = lead.Title
      pessoa.phone = lead.Phone
      pessoa.website = lead.Website
      pessoa.integrate = true
      pessoa.salesforce_id = lead.Id
    end
  end
end
