class ContactsController < ApplicationController
  def show    
    @contact = Contact.find(params[:id])
    render "show"
  end

  def index
     @contacts = Contact.all
     render "index"
    
  end

    def new
    render "new"
  end

  def create
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @phone = params[:phone_number]

    Contact.create(first_name: @first_name, last_name: @last_name,email: @email, phone_number: @phone )
    render "create"
  end

  def edit
    @contact = Contact.find(params[:id])
    render "edit"
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(first_name: params[:first_name], last_name: params[:last_name])

    render "update"    
  end
  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    render "destroy"    
  end


end
