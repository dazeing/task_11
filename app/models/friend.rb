class Friend < User
    validates_presence_of :login, :name, :type
end