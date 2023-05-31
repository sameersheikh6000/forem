class Lib::Forem::UserClassDecorator
    def self.decorate(user_class)
      user_class.class_eval do
        # Define your decorator methods here
      end
    end
end
  
  Lib::Forem::UserClassDecorator.decorate(Forem.user_class) if Forem.user_class
  


# Fix for #88
# Forem.decorate_user_class! if Forem.user_class
