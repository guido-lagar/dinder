class InvitationsMailer < ApplicationMailer
  before_action :set_inviter_and_invitee
  before_action { @account = params[:inviter].account }

  default to:       -> { @invitee.email_address },
          from:     -> { common_address(@inviter) },
          reply_to: -> { @inviter.email_address_with_name }

  def account_invitation
    mail subject: "#{@inviter} invited you to plan your date"
  end

  def project_invitation
    @project    = params[:project]
    @summarizer = ProjectInvitationSummarizer.new(@project.bucket)

    mail subject: "Please follow the link to choose your date plan "
  end

  private

  def set_inviter_and_invitee
    @inviter = params[:inviter]
    @invitee = params[:invitee]
  end
end
