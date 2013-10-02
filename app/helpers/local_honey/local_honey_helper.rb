module LocalHoney
  module LocalHoneyHelper
    def current_locale
      image_tag("local_honey/flag-#{I18n.locale}.png")
    end

    def render_local_honey(options = {})
      options = options.reverse_merge({ layout: :select })
      render "locales/#{options[:layout]}_layout", options: options
    end
  end
end