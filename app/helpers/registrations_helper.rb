module RegistrationsHelper


  def capacity_or_sold_out(event)
    if event.sold_out?
      content_tag(:span, "SOLD OUT!", class: "sold-out")
    else
      link_to "Register", new_event_registration_path(event), class: "register"
    end
  end

end
