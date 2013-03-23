module StaticPagesHelper

  def delete_link(item)
    link_to("delete", item, method: :delete, 
    						data: { confirm: "You sure?" }, 
    						title: micropost.content)
  end
end
