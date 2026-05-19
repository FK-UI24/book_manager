module ComicsHelper
    def total_books
        total = Comic.sum(:individualtotal)
        return total
    end
    def total_titles
        title=Comic.select(:title).to_a
        return title.length
    end
end
