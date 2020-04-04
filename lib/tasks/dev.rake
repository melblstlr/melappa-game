namespace(:dev) do
  desc "Hydrate the database with some dummy data to look at so that developing is easier"
  task({ :prime => :environment}) do
    Challenge.delete_all
    p "1"
    c = Challenge.new
    c.name ="Wikipedia Challenge"
    c.description = "Have the two people in the group that have birthdays closest to today, each pick a random Person/Place/Thing/Event, etc. that would have its own Wikipedia page.

Now, everyone logs onto Wikipedia. (https://www.wikipedia.org/ )The goal is to get from the first word to the second, only clicking through links via the Wikipedia pages. You must stay within the Wikipedia universe, and not got to any other random website."
    c.scoring = "Set the time for 5 minutes. First person to get from 1st word to the 2nd word wins this challenge.
Winner takes home: 1 Point
Non-Winners take home: 0 Points"
    c.save

    p"2"
    c = Challenge.new
    c.name = "Home Raid"
    c.description = "Select the person with the longest full name. Have that person think of a random word (do not disclose immediately).

When the person announces the word, each player must run around their house and find an object that's name starts with each letter in the given word. 

For example, if the word is HI, a player may find and bring back a Hanger and some Ice."
    c.scoring = "Each player reads through their words. Any word that another person also wrote down will get crossed off. Whoever has the most unique words left wins the challenge.
Winner takes home: 1 Point
Non-Winners take home: 0 Points"
    c.save
    p"3"

    c = Challenge.new
    c.name = "Scramble"
    c.description = "Select the person that is wearing the most colorful shirt. Have that person think of a random word that is at least 8 letters long (do not disclose immediately).

Set a timer for 1 minute. When the person announces the word, the game starts. Each player must try to make as many words out of the given word that they can.

For example: if the word was announcement some examples may be noun cement meat and acne"
    c.scoring = "Each player reads through their words. Any word that another person also wrote down will get crossed off. Whoever has the most unique words left wins the challenge.
Winner takes home: 1 Point
Non-Winners take home: 0 Points"
    c.save


    p"4"
    c = Challenge.new
    c.name = "Layer Up"
    c.description = "For this challenge, you'll have to move to your closet.

Set a timer for 1 minute. In that minute, put on as many layers of clothes as you possibly can."
    c.scoring = "Whoever has the most layers of clothing on at the end of the challenge wins.
Winner takes home: 1 Point
Non-Winners take home: 0 Points"
    c.save

    p"5"    
#     c = Challenge.new
#     c.name = "Hello, Fam"
#     c.description = "This challenge requires your phone. 

# Each person calls up anyone in their immediate family to get a response."
#     c.scoring = "The first person to connect with someone in their family and say hello wins the challenge.
# Winner takes home: 1 Point
# Non-Winners take home: 0 Points"
#     c.save

    p"6"
        c = Challenge.new
    c.name = "Push-up Challenge"
    c.description = "Find a comfortable spot on the ground, and get in the push up position. Each player takes a turn completing 10 pushups. The remaining players time them."
    c.scoring = "Whoever completes 10 pushups the fastest wins the challenge.
Winner takes home: 1 Point 
Non-Winners take home: 0 Points"
    c.save

    p"7"
        c = Challenge.new
    c.name = "Jeopardy"
    c.description = "Play online jeopardy at this link: https://www.jeopardy.com/games-more/j6

There are 6 questions in the round. Each person completes a round individually. Jeopardy releases an online questionnaire per day, so questions will likely repeat if you play it twice on the same day."
    c.scoring = "Whoever gets the most questions correct wins the challenge. If multiple people tie for first, they each win. Share screenshots of the results in your group chat channel.
Winners take home: 1 Point
Non-Winners take home: 0 Points"
    c.save

    p"8"
        c = Challenge.new
    c.name = "Scattergories"
    c.description = "Play a round of categories online at this link. https://swellgarfo.com/scattergories/

One person must share their screen with the rest of the group.

A random letter will show up, as well as 12 categories (initially, they will be covered in black). Once the timer starts, the categories will be revealed. Each player will write down a word that corresponds to the category AND starts with the letter that is given at the top of the screen. 

For example, if the letter is B and one of the categories is food, a response could be broccoli. If you think of something that has two words that start with B, for example black beans, then that counts for double points. Black bean burger would count for triple points."
    
    c.scoring = "Once the timer is up, players will share out their answers. If any player has the same word as another player, it gets removed. Whoever has the most remaining unique words wins the challenge. If its a tie, then both players win the challenge.
Winners take home: 1 Point
Non-Winners take home: 0 Points"
    c.save


    p "9"
    c = Challenge.new
    c.name = "Blind Text"
    c.description = "Have the person with the shortest hair think of a random sentence. Using your video chat group, have everyone ready to type using their computer keyboard. 

When the person announces the sentence, everyone closes their eyes and attempts to type it as best they can."
    c.scoring = "Whoever is closest to the true sentence wins the challenge. If it is a tie, whoever typed the sentence first, wins the challenge.
Winners take home: 1 Point
Non-Winners take home: 0 Points"
    c.save

    p "10"
    c = Challenge.new
    c.name = "Blind Type"
    c.description = "Have the shortest person in the group think of a random sentence. Using your WhatsApp / messaging group, have everyone ready to type using their phone keyboard. 

When the person announces the sentence, everyone closes their eyes and attempts to type it as best they can.

Variation 1: You could also variate this game, and spread the joy by sending this text to a designated common friend or individual family member or best friend etc."
    c.scoring = "Whoever is closest to the true sentence wins the challenge. If it is a tie, whoever typed the sentence first, wins the challenge.
Winners take home: 1 Point 
Non-Winners take home: 0 Points"
    c.save

    p "11"
    c = Challenge.new
    c.name = "Lip Sync"
    c.description = "Each person picks a fairly well-known song. One at a time, each person takes turns to go on mute and lip sync their song. Feel free to add any dance moves and flair that feel appropriate."
    c.scoring = "Total points to be won from this game will equal the number of people who are playing. For each song that is accurately guessed, you win a point. Tally up the total scores from each song and assign it to those players."
    c.save


    p "12"

    c = Challenge.new
    c.name = "Who / What am I?"
    c.description = "The group decides on a collective category (e.g. Harry Potter characters, NBA Teams, Countries, Fruits, Colors etc.) which will allow each player to pick a person / thing from within the category (If Harry potter characters, players can choose to be Ron Weaselly, Sirius Black, Peter Pettigrew etc.). 

Each person then gets to ask 1 question, which everyone has to truthfully answer. Keep going until everyone has had the chance to ask 1 question, and everyone has responded truthfully to each question. The person who asks the question also has to respond to their own question.

Variation 1: When a person asks a question to the group, they don't have to answer their own question."
    c.scoring = "At the end of the question round, everyone puts their answer in for whom they think is who. Write your guesses down, and share it with the group once everyone is doing guessing. The person with the most correct guesses wins."
    c.save


    p "13"
    c = Challenge.new
    c.name = "Plank"
    c.description = "Find a firm spot on the ground, preferably over a Yoga Mat or Carpet. Now get ready for the Plank Position:
1. Get into pushup position on the floor.
2. Now bend your elbows 90 degrees and rest your weight on your forearms.
3. Keep your torso straight and rigid and your body in a straight line from ears to toes with no sagging or bending.
4. Your head is relaxed and you should be looking at the floor.

Variation 1: You could decide as a group to time-box this challenge, and everyone who makes it to the time-limit wins a point."
    c.scoring = "Person who stays the longest in the Plank position wins. There is no time-limit.
Winner takes home: 1 Point
Non-Winners take home: 0 Points"
    c.save

    p "14"

    c = Challenge.new
    c.name = "Tea-Bag Challenge"
    c.description = "Place a steady tea-cup in front of your laptop for all your friends on video to see it. Take a tea-bag and stand approximately 3 meters away from your laptop (walk backwards from your laptop as you face the laptop). Select someone to give a count-down: 3-2-1 -> Now everyone has to aim the tea-bag for the cup. Every time you miss, reset by picking up the tea bag and going back to your starting position until you get it in. First person to get it in, wins! 

Variation 1: Set a time-limit, and allow everyone to shoot the tea-bag into the tea-cup as many times, from the same starting position. Person to get it in the most number of times, wins! 

Variation 2: Play either the original challenge or the variation challenge with a slight twist - You have to now use your non-dominant hand to shoot the tea-bag into the tea cup. Same scoring rules as previously apply."
    c.scoring = "First person to shoot the tea-bag into the tea-cup wins.
Winner takes home: 1 Point 
Non-Winners take home: 0 Points

If you are playing the variations, each variation will have one winner winning a point per variation. So tally up the totals from all variations played and then accordingly assign scores to those players. For e.g. a player who has won two of the three variations, assuming you've played each of the three variations once, will have the total score of 2."
    c.save


    p"15"

    c = Challenge.new
    c.name = "ST Challenge"
    c.description = "Everyone on the call picks a number starting from 1 up to the number of people playing in the group (If there are 6 people playing, each person will have a number from 1 to 6. Imagine doing this if you were all sitting in a circle around each other, with the numbers going around in circular fashion). Person #1 then says a word - any word should work. Person #2 says a different word that needs to be somewhat related to the word said by Person #1. Person #3 then goes next after Person #2, and so on. The game goes on in a circular fashion like that until a person says a word that begins with the letter 'S' or the letter 'T'. That person then gets eliminated from the game. Round 2 then begins with the person who was supposed to be right next. Eliminated people don't progress to the next round. After multiple rounds, the last person standing wins this game and challenge. Also, any word that has been said once can no longer be said throughout the game - if a person takes too long to think of a word, they probably don't deserve to move on to the next round. This can be a group decision on how long to give to each person when thinking of a word.

Game organizational tip: Take a screenshot of everyone, and assign numbers to people on the screenshot and share it back to the group. It should be easier then for people to see who was before them and who was after. Suggest a WhatsApp / GroupMe / Slack group to be set-up to make this easier."
    c.scoring = "Person who doesn't mess-up until the last round wins!
Winner takes home: 1 Point 
Non-Winners take home: 0 Points"
    c.save



    p "16"

    c = Challenge.new
    c.name = "Sporcle"
    c.description = "Person with the shortest name in the group picks a quiz from Sporcle's Hottest / Trending Quizzes and each person attempts to solve it on their own. The person who has the highest score wins. Each person should share their scores with the group (either as a picture on WhatsApp or screen-share if you are on a video call). 

Link to Sporcle: https://www.sporcle.com/"
    c.scoring = "Person with the highest score wins, and if you tie for the highest scores, you all win.
Winner with highest score: 1 Point
Non-Winners: 0 Points"
    c.save

    p "17"

    c = Challenge.new
    c.name = "Paint Pictionary"
    c.description = "Each person picks a random word to draw. Each person takes turns, one at a time, to draw their word on MS paint, while going on mute. The first person on the group to guess the picture correctly wins. The painter would have to share their screen with the group when doing this.
Link to Online Paint: https://jspaint.app/#local:d1b9441963a39"
    c.scoring = "Total points to be won from this game will equal the number of people who are playing. For each MS Paint picture accurately guessed, you win a point. Tally up the total scores from each Paint drawing and then assign it to those players."
    c.save

    p "18"
    c = Challenge.new
    c.name = "Challenge 4 Yoga"
    c.description = "Everyone to be prepared to take a Yoga Figure 4 Pose. An announcer gives a count-down once everyone is steady -> 3-2-1 -> Everyone stands in the Yoga Figure 4 pose for as long as they can. Person who doesn't fall or drop their leg down wins this challenge. Pick one of the many Yoga Figure 4 poses from here to do: https://www.google.com/search?q=Yoga+Pose+Figure+4&safe=strict&rlz=1C1GCEA_enSG836SG836&sxsrf=ALeKk03l4NUhJRtchv5x_pR_9F5bTNsIzQ:1585986636078&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjXj7_QpM7oAhVQSX0KHcwkBFMQ_AUoAXoECA8QAw&biw=1600&bih=762

Variation 1: Set a time-limit for this challenge, and everyone who is able to hold the Yoga Figure 4 Pose until this time, wins a point each."
    c.scoring = "Person who doesn't fall and drop their leg wins this challenge.
Winner takes home: 1 Point 
Non-Winners take home: 0 Points"
    c.save

    p "19"

    c = Challenge.new
    c.name = "Act-It-Out"
    c.description = "Each person picks a movie. One person at a time takes turns to act this movie, while on mute. The first person on the group to announce the right movie wins."
    c.scoring = "Total points to be won from this game will equal the number of people who are playing. For each Movie charade accurately guessed, you win a point. Tally up the total scores from each movie charade and then assign it to those players."
    c.save

    p "20"

    c = Challenge.new
    c.name = "Find The Recipe"
    c.description = "Everyone picks a random ingredient and doesn't announce it to the group until everyone is ready. An announcer gives a countdown and on 3, 2, 1 -> everyone puts their ingredient down on the group chat (WhatsApp group or Video Conference chat). Everyone is then given 2-minutes to find a recipe that incorporates all the ingredients listed. As soon as someone finds a recipe that uses all ingredients, they post the recipe page to the group. The person with the closest recipe (incorporating most number of ingredients) and fastest fingers wins. Duplicate ingredients can be treated as the same - for example if two people mention the ingredient lemon, just find a recipe that includes lemons in them.

Added variation: Try to bookmark this recipe for later and give it a try. Time to travel the world with these international cuisines from the comfort of your home."
    c.scoring = "Person with the closest recipe (incorporating most number of ingredients) and fastest fingers wins.
Winner takes home: 1 Point 
Non-Winners take home: 0 Points"
    c.save


  end
end
