class Lib::Forem::UserClassDecorator
    def self.included(base)
    
    end
end
  
Forem.user_class.include(Lib::Forem::UserClassDecorator) if Forem.user_class
  


# Fix for #88
# Forem.decorate_user_class! if Forem.user_class
