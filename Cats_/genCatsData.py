import random

with open('last_names.txt', 'r') as f:
	last_names = f.read().splitlines()

with open('first_names.txt', 'r') as f:
	first_names = f.read().splitlines()

usersCount = 0
maxIndex = len(first_names) - 1;
with open('users.csv', 'w') as f:
	f.write("uid,fname,lname\n")
	for ln in last_names:
		for k in range(3):
			fn = first_names[random.randrange(maxIndex)]
			f.write("{},{},{}\n".format(usersCount, fn, ln))
			usersCount = usersCount + 1

videosCount = 0
with open('videos.csv', 'w') as f:
	f.write("vid,vname\n")
	for vid in range(1000000):
		f.write("{},video_{}\n".format(vid, vid))
		videosCount = videosCount + 1
	
with open('likes.csv', 'w') as f:
	f.write("uid,vid\n")
	for uid in range(usersCount):
		likedCount = random.randrange(100)
		for k in range(likedCount):
			vid = random.randrange(videosCount)
			f.write("{},{}\n".format(uid, vid))

with open('friends.csv', 'w') as f:
	f.write("uid1,uid2\n")
	for uid1 in range(usersCount):
		friendsCount = random.randrange(100)
		for k in range(friendsCount):
			uid2 = random.randrange(usersCount)
			f.write("{},{}\n".format(uid1, uid2))

