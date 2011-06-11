class Document < ActiveRecord::Base
  attr_accessible  :pdf
  
  has_attached_file :pdf, 
  :storage => :s3,
  :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
  :path => ":style/:filename",
  :bucket => 'dac_test'
  
  validates_attachment_content_type :pdf,
      :content_type => [ 'application/pdf' ],
      :message => "only pdf files are allowed"
  
  
  
end
