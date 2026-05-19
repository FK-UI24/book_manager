module TitlesHelper
    def now_what
        case params[:conclusion]
        when 'true'
            "完結"
        when 'false'
            "未完結"
        else
            ""
        end
    end
end
