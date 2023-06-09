class ProfileRepresenter
    def initialize(user)
        @user = user
    end

    def as_json
        {
            name: @user.profile.name,
            total_attendance: @user.attendances.count,
            list: @user.attendances.map do |attendance|
                {
                    id: attendance.id,
                    attend: attendance.attend,
                    date: attendance.created_at
                }
            end
        }
    end

end