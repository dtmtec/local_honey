module LocalHoney
  module LocaleHelper
    def current_flag
      image_tag("local_honey/flag-#{I18n.locale}.png")
    end
  end
end