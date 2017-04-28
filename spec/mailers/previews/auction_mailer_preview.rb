# Preview all emails at http://localhost:3000/rails/mailers/auction_mailer
class AuctionMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    AuctionMailer.sample_email(User.first)
  end
end
