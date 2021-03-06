module ServicesHelper
  def var_list(collection, type="elements", mode="r")
    if collection.size>0
      r ="<ul class='var_list_helper'>"
      collection.each do |e|
        r += "<li><span class='ui-triangle'></span><span>#{e[0].to_s}</span>"
        value = (e[1] || "-----").to_s
        
        if mode == "r"
          r += "<span class='value'>#{value}</span>"
        else
          r += "<span class='variable_value value'><span>#{value}</span><img src='/images/icons/script_go.png' class='var_control' /></span>"
        end
        
        r += "</li>"
      end
      
      return r+"</ul>"
    else
      "<p class='no_list_elements'>No #{type}</p>"
    end
  end  
  
  def method_list(collection, type="elements", use="for show")
    if collection.size>0
      r ="<ul class='meth_list_helper'>"
      collection.each do |e|
        click_handler = (e.class==Array) ? "click=\"#{e[1]}\"" : ""
        n             = (e.class==Array) ? e[0] : e
          
        r += "<li><span class='ui-triangle'></span><span>#{n.to_s}</span>"
        
        if  use=="runnable"
          r+= "<span class='value'><img src='/images/invoke.png' class='runnable_method' #{click_handler}  alt='Invoke #{n} on #{$service[:full_name]}' title='Invoke #{n} on #{$service[:full_name]}' /></span>"
        end
        
        r += "</li>"
      end
      
      return r+"</ul>"
    else
      "<p class='no_list_elements'>No #{type}</p>"
    end
  end
end
