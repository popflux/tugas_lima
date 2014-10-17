class ConfirmationMailer < ActionMailer::Base
  def confirm_email(target_email, activation_token)

    @activation_token = activation_token

    mail(:to => target_email,

          :from => "develror@gmail.com",

          :subject => "[Tosmic Project]") do |format|

            format.html { render 'confirm_email'}

    end

  end
end
