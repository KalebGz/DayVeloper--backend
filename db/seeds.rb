# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Task.destroy_all
Subtask.destroy_all
Word.destroy_all
Category.destroy_all
WordCategory.destroy_all
TaskCategory.destroy_all
Event.destroy_all

prof_pic_1 = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.artstation.com%2Fartwork%2FRY604y&psig=AOvVaw1aStwDBe4W0Bf5ZWnV_UGC&ust=1595800999223000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLCSkpK06eoCFQAAAAAdAAAAABAD"
prof_pic_2 = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.artstation.com%2Fmarketplace%2Fp%2FP7wD%2F4-character-logo-s-profile-pictures&psig=AOvVaw1aStwDBe4W0Bf5ZWnV_UGC&ust=1595800999223000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLCSkpK06eoCFQAAAAAdAAAAABAJ"
prof_pic_3 = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.iconfinder.com%2Ficons%2F3203259%2Favatar_of_a_man_man_with_glasses_profile_of_man_simple_man_stylish_man_icon&psig=AOvVaw1aStwDBe4W0Bf5ZWnV_UGC&ust=1595800999223000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLCSkpK06eoCFQAAAAAdAAAAABAO"

usr_0 = User.create(username:"1", password:"1", profile_pic:"google.com", location:"USA")
usr_1 = User.create(username:"Jack", password:"123", profile_pic:prof_pic_1, location:"Hawaii")
usr_2 = User.create(username:"Brandon", password:"123", profile_pic:prof_pic_2, location:"Alabama")
usr_3 = User.create(username:"Kaleb", password:"123", profile_pic:prof_pic_3, location:"Washington,DC")

task_1 = Task.create(title:"Clean shoes", description: "Remove smudge off of the tip of red sneakers")
task_2 = Task.create(title: "English HW", description: "Read pages 100-120 of Otello")
task_3 = Task.create(title:"Clean shoes", description: "Remove smudge off of the tip of red sneakers")
task_4 = Task.create(title:"Spanish HW", description: "Practice presentation")
task_5 = Task.create(title: "CS final Project")

sub_t_1 = SubTask.create(title: "build out models", task: task_5)
sub_t_2 = SubTask.create(title: "create migrations", task: task_5)
sub_t_3 = SubTask.create(title: "create Seed file and test program", task: task_5)
sub_t_4 = SubTask.create(title: "render json object from browser", task: task_5)

# Look for external api to genreate random words
# https://www.vocabulary.com/lists/176046
word_1 = Word.create(term: "aberration", defintion: "a state or condition markedly different from the norm")
word_2 = Word.create(term: "embezzle", defintion: "appropriate fraudulently to one's own use")
word_3 = Word.create(term: "API (Application Programming interface)", defintion: "Way in which organizations allow the public to request their data/functionality to the public")
word_4 = Word.create(term: "Heuristic", defintion: "a technique designed for solving a problem more quickly")

# Categories for words
cat_w_1 = Category.create(name: "Computer Science")
cat_2_2 = Category.create(name: "General")

# Categories for Tasks
cat_t_1 = Category.create(name: "Homework")
cat_t_2 = Category.create(name: "Chores")


wc_1 = WordCategory.create(category: cat_w_1, word)
