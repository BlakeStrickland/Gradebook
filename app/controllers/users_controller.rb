class UsersController < ApplicationController
  # Where your login form sent you:
  def new
  end

  def log_in
    if request.post?
      t = Teacher.find_by_email(params[:email])
      s = Student.find_by_email(params[:email])
      p = Parent.find_by_email(params[:email])
      if t && t.authenticate(params[:password])
        session[:log_in_teacher] = t.id
        redirect_to teachers_path, notice: "You did it!"
      elsif s && s.authenticate(params[:password])
        session[:log_in_student] = s.id
        redirect_to s, notice: "You did it!"
      elsif p && p.authenticate(params[:password])
        session[:log_in_parent] = p.id
        redirect_to p, notice: "You did it!"
      else
        redirect_to users_log_in_path, notice: "Go jump off a short ledge."
      end
    end
  end

  def logout
    session[:log_in_teacher] = false
    session[:log_in_student] = false
    session[:log_in_parent] = false

    redirect_to root_path
  end
  def set_params
    params.require(:teacher_id).permit(:email, :password)
  end
end
