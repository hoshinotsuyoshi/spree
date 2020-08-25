class UserPreview < ActionMailer::Preview
  def reset_password_instructions
    Spree::UserMailer.reset_password_instructions(Spree::User.first, 'your_token', { current_store_id: Spree::Store.first.id })
  end

  def confirmation_instructions
    Spree::UserMailer.confirmation_instructions(Spree::User.first, 'your_token')
  end
end
