# method named 'badge_maker'
# method will put "Hello, my name is #{name}" 
# 

def badge_maker(name)
  "Hello, my name is #{name}."
end

# method named 'batch_badge_creator'
# method takes in an array of names as an argument
# method returns an array of badge messages
# 

def batch_badge_creator(speakers)
  speaker_badges = []
  
  speakers.each do |speaker_name|
    speaker_badges << badge_maker(speaker_name)
  end
  
  speaker_badges
end

# method named 'assign_rooms'
# method takes a lit of speakers and assigns each speaker to a room 
# method ensures that each room only has one speaker
# method returns a list of room assignments 

def assign_rooms(speakers)
  room_assignments = []
  
  speakers.each_with_index do |name, index|
    room_assignments << "Hello, #{name}! You'll be assigned to room #{(index+1)}!"
  end
 
 room_assignments
end

# method named 'printer'
# method will output the results of the 'batch_badge_creator' and 'assign_rooms' methods

def printer(speakers)
  batch_badge_creator(speakers).each do |badge|
    puts badge
  end
  
  assign_rooms(speakers).each do |assignment|
    puts assignment 
  end
 
end
