class UsersController < ApplicationController
    # Where your login form sent you:
    def index
      if request.post?
        t = Teacher.find_by_email(params[:email])
        if t.authenticate(params[:password_digest])
          session[:teacher_id] = u.id
          redirect_to teachers_path, notice: "You did it!"
        else
          redirect_to root_path, notice: "Go jump off a short ledge."
        end
      end
    end

end
