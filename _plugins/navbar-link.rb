module Jekyll
  module NavbarLink
    def navlink_list(input)
      for item in input
	      item["nav"] = true
        item["url"] = item["permalink"]
      end
      return input
    end
  end
end

Liquid::Template.register_filter(Jekyll::NavbarLink)