# pyramid.rb
def build_pyramid(width)
  pyramid = ""
  height = width / 2

  height.times do |h|
    # Add the spaces for this line
    spaces = height - h - 1
    spaces.times do
      pyramid += " "
    end

    # Add in the pyramid blocks
    (width - 2 * spaces).times do
      pyramid += "#"
    end

    # Finish the line
    pyramid += "\n"
  end

  return pyramid
end

def main
  width = ARGV[0].to_i
  pyramid = build_pyramid(width)
  puts pyramid
end

main if __FILE__ == $PROGRAM_NAME