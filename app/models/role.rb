class Role < ActiveRecord::Base
  has_many :auditions

  # Role#auditions returns all of the auditions associated with this role
  # Role#actors returns an array of names from the actors associated with this role
  # Role#locations returns an array of locations from the auditions associated with this role
  # Role#lead returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
  # Role#understudy returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'


  def actors
    self.auditions.map do |a|
      a.actor
    end
  end
  
def locations
  self.auditions.map do |a|
    a.location
  end
end

def lead
  found_audition = self.auditions.find_by(hired: true)
  found_audition.first ? found_audition.first : "no actor has been hired for this role"
end


# def understudy
#   arr = self.auditions.filter do |item|
#     item.hired == true
#   end
#   arr.second? arr.second : 'no actor has been hired for understudy for this role'
#   end
# end

def understudy
 found_it=self.auditions.where(hired: true).second
 found_it ? found_it : 'no actor has been hired for understudy for this role'
end

end