User.destroy_all
Task.destroy_all
Subtask.destroy_all
Word.destroy_all
WordCategory.destroy_all
TaskCategory.destroy_all
Event.destroy_all

# reset ids of all models
ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

prof_pic_1 = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.artstation.com%2Fartwork%2FRY604y&psig=AOvVaw1aStwDBe4W0Bf5ZWnV_UGC&ust=1595800999223000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLCSkpK06eoCFQAAAAAdAAAAABAD"
prof_pic_2 = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.artstation.com%2Fmarketplace%2Fp%2FP7wD%2F4-character-logo-s-profile-pictures&psig=AOvVaw1aStwDBe4W0Bf5ZWnV_UGC&ust=1595800999223000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLCSkpK06eoCFQAAAAAdAAAAABAJ"
prof_pic_3 = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.iconfinder.com%2Ficons%2F3203259%2Favatar_of_a_man_man_with_glasses_profile_of_man_simple_man_stylish_man_icon&psig=AOvVaw1aStwDBe4W0Bf5ZWnV_UGC&ust=1595800999223000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLCSkpK06eoCFQAAAAAdAAAAABAO"

user_0_prof_pic = 'https://avatars3.githubusercontent.com/u/25066309?s=460&u=5b39a7407598a2fa7d06a2475cbea0fa53bed6d1&v=4'
usr_0 = User.create(username:"KalebGz", password:"1", profile_pic:user_0_prof_pic, location:"20015")
usr_1 = User.create(username:"Jack", password:"123", profile_pic:prof_pic_1, location:"1234")
usr_2 = User.create(username:"Brandon", password:"123", profile_pic:prof_pic_2, location:"12344")
usr_3 = User.create(username:"Kaleb", password:"123", profile_pic:prof_pic_3, location:"2234")

# Categories for Tasks
cat_t_1 = TaskCategory.create(name: "Homework")
cat_t_2 = TaskCategory.create(name: "Chores")

task_1 = Task.create(title:"Clean shoes", description: "Remove smudge off of the tip of red sneakers", task_category: cat_t_2, user: usr_0)
task_2 = Task.create(title: "English HW", description: "Read pages 100-120 of Otello", task_category: cat_t_1, user: usr_0)
task_3 = Task.create(title:"Clean shoes", description: "Remove smudge off of the tip of red sneakers", task_category: cat_t_2, user: usr_0)
task_4 = Task.create(title:"Spanish HW", description: "Practice presentation", task_category: cat_t_1, user: usr_0)
task_5 = Task.create(title: "CS final Project", task_category: cat_t_1, user: usr_0)

# cat_t_1.tasks.push(task_2)
# cat_t_1.tasks.push(task_4)
# cat_t_2.tasks.push(task_1)
# cat_t_2.tasks.push(task_3)

sub_t_1 = Subtask.create(title: "build out models", task: task_5)
sub_t_2 = Subtask.create(title: "create migrations", task: task_5)
sub_t_3 = Subtask.create(title: "create Seed file and test program", task: task_5)
sub_t_4 = Subtask.create(title: "render json object from browser", task: task_5)


# Categories for words
cat_w_1 = WordCategory.create(name: "General")
cat_w_2 = WordCategory.create(name: "Computer Science")

word_1 = Word.create(term: "aberration", definition: "a state or condition markedly different from the norm", word_category: cat_w_1, user: usr_0)
word_2 = Word.create(term: "embezzle", definition: "appropriate fraudulently to one's own use", word_category: cat_w_1, user: usr_0)
word_3 = Word.create(term: "API (Application Programming interface)", definition: "Way in which organizations allow the public to request their data/functionality to the public", word_category: cat_w_2, user: usr_0)
word_4 = Word.create(term: "Heuristic", definition: "a technique designed for solving a problem more quickly", word_category: cat_w_2, user: usr_0)

# cat_w_1.words.push(word_1)
# cat_w_1.words.push(word_2)
# cat_w_2.words.push(word_3)
# cat_w_2.words.push(word_4)

d_1 = "Wed Jul 29 2020 03:03"
e_1 = Event.create(title: "Club Zoom Meeting!", notif_time: d_1, user: usr_0)

# binding.pry
# 0