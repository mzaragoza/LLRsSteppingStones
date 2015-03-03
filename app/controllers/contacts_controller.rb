class ContactsController < PublicController
  expose(:contacts){ Contact.order("id DESC") }
  expose(:contact, attributes: :contact_params)

  def create
    if contact.save
      flash[:notice] = t(:contact_was_successfully_created)
      redirect_to root_path(anchor: 'contact')
    else
      render :new
    end
  end
  private


  def contact_params
    params.require(:contact).permit(
      :name,
      :email,
      :subject,
      :message,
    )
  end
end


