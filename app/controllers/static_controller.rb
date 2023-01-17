class StaticController < ApplicationController
  def home
  end

  def profil
    if authenticate_user! == false
      redirect_to root_path
    end
  end
end
