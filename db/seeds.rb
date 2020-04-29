# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create options for user to select their gender
Gender.create!([
  {identity: "Male"},
  {identity: "Female"},
  {identity: "Rather not say"}
])

# Create options for group owners to select user approval process
ApprovalType.create!([
  {option: "Automatic"},
  {option: "Manual"},
  {option: "Decline"}
])

# Create options to select group type
GroupType.create!([
  {option: "Club"},
  {option: "Team"},
  {option: "Community"}
])

# Create options to select sports
Sport.create!([
  {name: "Archery"},
  {name: "Badminton"},
  {name: "Baseball"},
  {name: "Basketball"},
  {name: "Bowling"},
  {name: "Boxing"},
  {name: "Chess"},
  {name: "Cricket"},
  {name: "Cycling"},
  {name: "Fencing"},
  {name: "Fishing"},
  {name: "Fitness"},
  {name: "Football"},
  {name: "Golf"},
  {name: "Gymnastics"},
  {name: "Hockey"},
  {name: "Horse Racing"},
  {name: "Judo"},
  {name: "Karate"},
  {name: "Rugby"},
  {name: "Running"},
  {name: "Soccer"},
  {name: "Surfing"},
  {name: "Table Tennis"},
  {name: "Volleyball"},
  {name: "Wrestling"},
  {name: "Yoga"}
])

# Create options to select sport skill level
SkillLevel.create!([
  {name: "Beginner"},
  {name: "Intermediate"},
  {name: "Expert"}
])

# Create options to select user membership roles
Role.create!([
  {name: "Request"},
  {name: "Member"},
  {name: "Moderator"},
  {name: "Owner"}
])

# Create sample users
User.create!([
  {username: "admin", email: "admin@playerly.com", fname: "John", lname: "Doe", bio: "Have you seen my sister, Jane?", dob: Date.new(1990, 1, 1), password: "p@ssW0rd", password_confirmation: "p@ssW0rd", gender_id: 1, profile_image: "", city: "Melbourne", post_code: "3000", last_active: Date.new(2020, 4, 10), is_private: true, is_active: true, is_banned: false, is_admin: true},
  {username: "longcyclist", email: "longcyclist@email.com", fname: "Michaela", lname: "Long", bio: "I wheelie love riding my bike!", dob: Date.new(1998, 3, 12), password: "p@ssW0rd", password_confirmation: "p@ssW0rd", gender_id: 2, profile_image: "", city: "Melbourne", post_code: "3000", last_active: Date.new(2020, 4, 26), is_private: false, is_active: true, is_banned: false, is_admin: false},
  {username: "bballbrandon", email: "bballbrandon@email.com", fname: "Brandon", lname: "Gutierrez", bio: "I used to be addicted to basketball... but I rebounded.", dob: Date.new(1980, 11, 3), password: "p@ssW0rd", password_confirmation: "p@ssW0rd", gender_id: 1, profile_image: "", city: "Melbourne", post_code: "3000", last_active: Date.new(2020, 3, 31), is_private: false, is_active: true, is_banned: false, is_admin: false},
  {username: "golfball", email: "golfball@email.com", fname: "Stevie", lname: "Nikolai", bio: "How many golfers does it take to change a lightbulb? FORE!", dob: Date.new(2000, 1, 24), password: "p@ssW0rd", password_confirmation: "p@ssW0rd", gender_id: 3, profile_image: "", city: "Sydney", post_code: "2000", last_active: Date.new(2020, 3, 14), is_private: true, is_active: true, is_banned: false, is_admin: false},
  {username: "arrowtoknee", email: "arrowtoknee@email.com", fname: "Mark", lname: "Clark", bio: "Have you ever tried blind-folded archery? You don't know what you're missing.", dob: Date.new(1998, 8, 10), password: "p@ssW0rd", password_confirmation: "p@ssW0rd", gender_id: 1, profile_image: "", city: "Brisbane", post_code: "4000", last_active: Date.new(2020, 3, 3), is_private: false, is_active: true, is_banned: true, is_admin: false},
  {username: "maccasrun", email: "maccasrun@email.com", fname: "Mary", lname: "Scott", bio: "Getting there is half of the run.", dob: Date.new(1976, 4, 1), password: "p@ssW0rd", password_confirmation: "p@ssW0rd", gender_id: 2, profile_image: "", city: "Geelong", post_code: "3220", last_active: Date.new(2020, 4, 20), is_private: true, is_active: true, is_banned: false, is_admin: false},
  {username: "innerpeace", email: "innerpeace@email.com", fname: "Matt", lname: "Scott", bio: "I can tell you a pun, but it might be a bit of a stretch...", dob: Date.new(1979, 12, 18), password: "p@ssW0rd", password_confirmation: "p@ssW0rd", gender_id: 1, profile_image: "", city: "Geelong", post_code: "3220", last_active: Date.new(2020, 4, 25), is_private: false, is_active: true, is_banned: false, is_admin: false}
])

# Create sample groups
Group.create!([
  {sport_id: 27, name: "Yoga Space", description: "Build a strong foundation and find love for the practice with fellow Geelongians!", profile_image: "https://i.pinimg.com/originals/bf/df/c1/bfdfc116f67392ed945e93ad7025b777.jpg", approval_type_id: 1, group_type_id: 3, has_skill_requirement: false, skill_level_id: 1, has_max_capacity: false, max_capacity: 0, email: "innerpeace@email.com", phone: "", address: "Slanden Park", city: "Geelong", state: "Victoria", post_code: "3220", is_private: false, is_active: true, is_banned: false},
  {sport_id: 4, name: "Gorillaz", description: "Gorillaz is a professional basketball team based in Melbourne, Victoria - known to compete in the National Basketball League and plays their home game at Melbourne Arena.", profile_image: "https://i.pinimg.com/736x/4c/44/de/4c44deb20b425b274d8377eac4c56f82.jpg", approval_type_id: 2, group_type_id: 2, has_skill_requirement: true, skill_level_id: 3, has_max_capacity: true, max_capacity: 20, email: "enquiries@gorillaz.com", phone: "", address: "90 Collins St", city: "Melbourne", state: "Victoria", post_code: "3000", is_private: true, is_active: true, is_banned: false},
  {sport_id: 14, name: "Macquarie Golf Club", description: "One of Australia's pre-eminent private clubs, we take pride in our love of the sport.", profile_image: "https://as1.ftcdn.net/jpg/01/15/25/26/500_F_115252648_a1AomstxAlQWfF4KeMW7ZgBYM1EXHski.jpg", approval_type_id: 2, group_type_id: 1, has_skill_requirement: true, skill_level_id: 2, has_max_capacity: false, max_capacity: 0, email: "contact@maquariegc.com", phone: "0292320763", address: "233 Maquarie St", city: "Sydney", state: "New South Wales", post_code: "2000", is_private: true, is_active: true, is_banned: false}
])

# Create sample user sport preferences
UserSport.create!([
  {user_id: 2, sport_id: 9, skill_level_id: 2},
  {user_id: 2, sport_id: 27, skill_level_id: 2},
  {user_id: 3, sport_id: 4, skill_level_id: 3},
  {user_id: 4, sport_id: 14, skill_level_id: 2},
  {user_id: 5, sport_id: 1, skill_level_id: 1},
  {user_id: 6, sport_id: 21, skill_level_id: 2},
  {user_id: 6, sport_id: 27, skill_level_id: 1},
  {user_id: 7, sport_id: 27, skill_level_id: 3}
])

# Create sample user group memberships
Membership.create!([
  {user_id: 7, group_id: 1, role_id: 4, is_banned: false},
  {user_id: 3, group_id: 2, role_id: 4, is_banned: false},
  {user_id: 4, group_id: 3, role_id: 4, is_banned: false},
  {user_id: 6, group_id: 1, role_id: 3, is_banned: false},
  {user_id: 2, group_id: 1, role_id: 1, is_banned: false}
])
