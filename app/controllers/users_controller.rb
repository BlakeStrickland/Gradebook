class UsersController < ApplicationController
  # Where your login form sent you:
  def index
    if request.post?
      t = Teacher.find_by_email(params[:email])
      if t && t.authenticate(params[:password])
        session[:teacher_id] == t.id
        redirect_to teachers_path, notice: "You did it!"
      else
        redirect_to root_path, notice: "Go jump off a short ledge."
      end
    end
  end
  def destroy
    session[:teacher_id] = false
    redirect_to users_index_path
  end
end
