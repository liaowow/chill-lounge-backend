# cocktail imgs
cocktails = [
    "https://www.thecocktaildb.com/images/media/drink/3pylqc1504370988.jpg",
    "https://www.thecocktaildb.com/images/media/drink/9179i01503565212.jpg",
    "https://www.thecocktaildb.com/images/media/drink/ctt20s1504373488.jpg",
    "https://www.thecocktaildb.com/images/media/drink/dazdlg1504366949.jpg",
    "https://www.thecocktaildb.com/images/media/drink/wrxrxp1472812609.jpg",
    "https://www.thecocktaildb.com/images/media/drink/ytsxxw1441167732.jpg",
    "https://www.thecocktaildb.com/images/media/drink/n0sx531504372951.jpg",
    "https://www.thecocktaildb.com/images/media/drink/3s6mlr1509551211.jpg",
    "https://www.thecocktaildb.com/images/media/drink/jwmr1x1504372337.jpg",
    "https://www.thecocktaildb.com/images/media/drink/f9erqb1504350557.jpg",
    "https://www.thecocktaildb.com/images/media/drink/spvvxp1468924425.jpg",
    "https://www.thecocktaildb.com/images/media/drink/qtwxwr1483387647.jpg",
    "https://www.thecocktaildb.com/images/media/drink/t0iugg1509556712.jpg",
    "https://www.thecocktaildb.com/images/media/drink/8cl9sm1582581761.jpg",
    "https://www.thecocktaildb.com/images/media/drink/qwvwqr1441207763.jpg",
    "https://www.thecocktaildb.com/images/media/drink/xsqrup1441249130.jpg",
    "https://www.thecocktaildb.com/images/media/drink/sywsqw1439906999.jpg",
    "https://www.thecocktaildb.com/images/media/drink/rz5aun1504389701.jpg",
    "https://www.thecocktaildb.com/images/media/drink/ojnpz71504793059.jpg",
    "https://www.thecocktaildb.com/images/media/drink/sutyqp1479209062.jpg",
    "https://www.thecocktaildb.com/images/media/drink/55muhh1493068062.jpg"
]

# messages
messages = [
    "When you're looking up at birds flying overhead, keep your mouth closed.",
    "Everybody makes mistakes.",
    "You can fail at what you don't want. So you might as well take a chance on doing what you love.",
    "YOLO",
    "The person who never made a mistake never made anything.",
    "Don't use Excel or Powerpoint documents for your basic word processing needs.",
    "Only those who attempt the impossible can achieve the absurd.",
    "Remedy tickly coughs with a drink of honey, lemon and water as hot as you can take.",
    "If you have grandparents or parents - Talk to them more. Ask them about their life experiences.",
    "When you look around and don't see anyone you respect, its time to leave.",
    "Life can be a lot more interesting inside your head.",
    "Winter is coming.",
    "Make choices and dont look back.",
    "Step 1. Give a shit. Step 2. Don't be a dick. Step 3. Know when to let go.",
    "To cleanly remove the seed from an Avocado, lay a knife firmly across it, and twist.",
    "Things are just things. Don't get too attached to them.",
    "When having a clear out, ask yourself if an item has any financial, practical or sentimental value. If not, chuck it.",
    "Build something out of LEGO.",
    "Remember that spiders are more afraid of you, than you are of them.",
    "Identify sources of happiness.",
    "When in doubt, just take the next small step."
]

User.destroy_all
Result.destroy_all
Board.destroy_all

# USER
annie = User.create(username: "liaowow", password_digest: "1209", mod: 2)
liz = User.create(username: "lizkim", password_digest: "1209", mod: 3)
ali = User.create(username: "ali", password_digest: "1209", mod: 4)
adam = User.create(username: "adam", password_digest: "1209", mod: 0)
maz = User.create(username: "maz", password_digest: "1209", mod: 5)
steve = User.create(username: "steve", password_digest: "1209", mod: 6)

# RESULT
Result.create(eat: 0, sleep: 1, exercise: 0, mood: 0, user_id: annie.id)
Result.create(eat: 1, sleep: 1, exercise: 1, mood: 1, user_id: annie.id)
Result.create(eat: 0, sleep: 1, exercise: 0, mood: 1, user_id: liz.id)
Result.create(eat: 1, sleep: 0, exercise: 1, mood: 0, user_id: liz.id)
Result.create(eat: 0, sleep: 1, exercise: 0, mood: 0, user_id: ali.id)

Result.create(eat: 0, sleep: 1, exercise: 0, mood: 0, user_id: adam.id)
Result.create(eat: 1, sleep: 1, exercise: 1, mood: 1, user_id: adam.id)
Result.create(eat: 0, sleep: 1, exercise: 0, mood: 1, user_id: steve.id)
Result.create(eat: 1, sleep: 0, exercise: 1, mood: 0, user_id: steve.id)
Result.create(eat: 0, sleep: 1, exercise: 0, mood: 0, user_id: maz.id)

# BOARD
10.times do 
    Board.create(user_id: annie.id, cocktail: cocktails.sample, message: messages.sample)
end

10.times do 
    Board.create(user_id: liz.id, cocktail: cocktails.sample, message: messages.sample)
end

10.times do 
    Board.create(user_id: ali.id, cocktail: cocktails.sample, message: messages.sample)
end

10.times do 
    Board.create(user_id: steve.id, cocktail: cocktails.sample, message: messages.sample)
end

10.times do 
    Board.create(user_id: adam.id, cocktail: cocktails.sample, message: messages.sample)
end

10.times do 
    Board.create(user_id: maz.id, cocktail: cocktails.sample, message: messages.sample)
end