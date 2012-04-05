module AlphaPag
  module ViewHelpers
    LETTERS = ('A'..'Z').to_a.unshift '#'

    def alpha_pag(current_letter, options={})
      LETTERS.each do |letter|
        if current_letter == letter
          concat content_tag :li, link_to(letter, "#"), :class => 'disabled'
        else
          concat content_tag :li, link_to(letter, "?filter=#{letter == '#' ? 'num' : letter}")
        end
      end
    end
    
    
  end
end

