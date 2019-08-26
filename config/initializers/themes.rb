theme_directory = Rails.root.join('app','assets', 'stylesheets')

Dir.entries(theme_directory).select do |entry| 
  if File.directory? File.join(theme_directory, entry) and entry !='.' and entry != '..'
    if File.exists? File.join(theme_directory, entry, 'main.css')
      if DesignTheme.exists?(name: entry) == false
        DesignTheme.create(name: entry)
      end	
    end	
  end
end

