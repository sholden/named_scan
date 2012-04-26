require "named_scan/version"

module NamedScan
  def named_scan(regex)
    keys = regex.named_captures.keys
    raise 'No named captures' if keys.none?
    if block_given?
      scan(regex) do |captures|
        yield Hash[keys.zip(captures)]
      end
      self
    else
      scan(regex).map do |captures|
        Hash[keys.zip(captures)]
      end
    end
  end
end

String.send(:include, NamedScan)