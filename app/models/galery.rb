class Galery < ApplicationRecord
    has_many_attached :images

    def thumbnail input
        return input.variant(resize:'800x600').processed
    end

    def minithumb input
        return input.variant(resize:'100x100').processed
    end
    def cardthumb input
        return input.variant(resize:'320x240!').processed
    end
end
