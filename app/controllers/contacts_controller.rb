class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    if @contact.deliver
      flash.now[:notice] = ""
      # redirect_to root_path
    else
      flash.now[:error] = "Your message was not sent. Please try again."
      render :new
    end
  end
end
