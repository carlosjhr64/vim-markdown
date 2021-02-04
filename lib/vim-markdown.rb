# VimMarkdown is loaded into VIM when user opens a markdown file.
module VimMarkdown
  # VERSION is semantic with major, minor, and build numbers.
  # On breaking changes, I'll bump up the major number.
  # The minor number currently encodes the number of module methods,
  # but that might change.
  # The build number encodes the two digit year, month, and day,
  # with an additional "0" to "9" series number in case multiple commits occur
  # on the same day.
  VERSION = '0.8.2102040'

  # Note: Highly overloaded
  def self.metadata(key=nil, value=nil)
    if key
      key = key.to_s
      if value
        # 1. metadata(key, value)
        VIM.command "let b:VimMarkdownMetadata#{key} = '#{value}'"
      else
        # 2. metadata(key)
        VimMarkdown.metadata do |k,v|
          if key==k
            VimMarkdown.metadata(k,v)
            return
          end
        end
        VimMarkdown.metadata(key,'')
      end
    else
      b = VIM::Buffer.current
      n,length = 1,b.length
      while n<length
        line = b[n].strip
        case line
        when /^\w+:/
          k,v = line.split(':', 2).map{|_|_.strip}
          if block_given?
            # 3. metadata{|k,v| ... }
            yield(k,v)
          else
            # 3. metadata
            VimMarkdown.metadata(k,v)
          end
        when "---"
          break if n>1
        else
          break
        end
        n += 1
      end
    end
  end

  def self.plugins(plugins=VIM.evaluate("b:VimMarkdownMetadataPlugins"))
    plugins.to_s.split.each do |plugin|
      begin
        require "vim-markdown/#{plugin}"
      rescue LoadError
        print $!
      end
    end
  end

  def self.after(directory, plugins=VIM.evaluate("b:VimMarkdownMetadataPlugins"))
    plugins.split.each do |plugin|
      begin
        eval "#{plugin.capitalize}.after_#{directory}"
      rescue NameError
        # nevermind...
      end
    end
  end
end
