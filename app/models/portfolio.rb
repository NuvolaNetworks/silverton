class Portfolio < ActiveRecord::Base

 has_attached_file :imagep, :styles => { :medium => "300x300>", :thumb => "100x100>" }
 validates_attachment_content_type :imagep, :content_type => /\Aimage\/.*\Z/
 has_attached_file :imagep2, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images2/:style/missing.png"
  mount_uploader :image, PortfolioUploader
  mount_uploader :image2, PortfolioUploader   
  mount_uploader :image3, PortfolioUploader  
  mount_uploader :image4, PortfolioUploader  
  mount_uploader :image5, PortfolioUploader 
  mount_uploader :image6, PortfolioUploader
  mount_uploader :image7, PortfolioUploader 
  mount_uploader :image8, PortfolioUploader 
  mount_uploader :image9, PortfolioUploader 
  mount_uploader :image10, PortfolioUploader 
  mount_uploader :image11, PortfolioUploader
  mount_uploader :image12, PortfolioUploader
  mount_uploader :image14, PortfolioUploader
  mount_uploader :image15, PortfolioUploader
  mount_uploader :image16, PortfolioUploader
  mount_uploader :image17, PortfolioUploader
  mount_uploader :image18, PortfolioUploader
  mount_uploader :image19, PortfolioUploader
  mount_uploader :image20, PortfolioUploader
  mount_uploader :image21, PortfolioUploader
  mount_uploader :image22, PortfolioUploader
  mount_uploader :image23, PortfolioUploader
  mount_uploader :image24, PortfolioUploader
  mount_uploader :image25, PortfolioUploader
  mount_uploader :image26, PortfolioUploader
  mount_uploader :image27, PortfolioUploader
  mount_uploader :image28, PortfolioUploader
  mount_uploader :image29, PortfolioUploader
  mount_uploader :image30, PortfolioUploader
  mount_uploader :image31, PortfolioUploader
  mount_uploader :image32, PortfolioUploader
  mount_uploader :image33, PortfolioUploader
  mount_uploader :image34, PortfolioUploader
  mount_uploader :image35, PortfolioUploader
end
