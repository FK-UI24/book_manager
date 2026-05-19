class Comic < ApplicationRecord
    validates :title, presence: true
    def calculate_individualtotal
        if start_volume&&end_volume
            return end_volume-(start_volume-1)-nonpossession
        end
    end
    before_save{
        if self.nonpossession==nil
            self.nonpossession=0
        end
        if self.start_volume==nil
            self.start_volume=0
        end
        if self.end_volume==nil
            self.end_volume=0
        end
        self.individualtotal=calculate_individualtotal
    }
end