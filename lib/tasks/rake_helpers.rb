module RakeHelpers
end

class String

  def colourize
    "\033[1;31m#{self}\033[0m...\n"
  end

  def space(value)
    spaces = "\n" * value
    spaces + self + spaces
  end

end

