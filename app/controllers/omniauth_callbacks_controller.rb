class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def manastats
    # You need to implement the method below in your model
    auth_data = env["omniauth.auth"]
    @user = User.find_for_manastats_oauth(auth_data, current_user)
    @user.manastats_access_token = auth_data['credentials']['token']
    if @user.persisted?
      @user.save
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "MANAstats"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.manastats_data"] = env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end