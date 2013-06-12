# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Quiz.create([
#   {name: "60's"},
#   {name: "70's"},
#   {name: "80's"},
#   {name: "90's"},
#   {name: "Country"}
# ])

sixties_quiz = Quiz.create(name: "60's")
sixties_questions = [
  [ 'hard', 'What British Invasion act had the song "When I Get Home"?', 'The Hollies', 'The Rolling Stones', 'The Beatles', 'The Dave Clark Five', 'The Beatles' ],
  [ 'hard', 'What Monkee had writing credits on their debut album?', 'Davy Jones', 'Micky Dolenz', 'Peter Tork', 'Michael Nesmith', 'Michael Nesmith' ],
  [ 'hard', 'What 1967 hit begins with "Theres something happening here, what it is aint exactly clear"?', 'Turn, Turn, Turn', 'Happy Together', 'Suite Judy Blue Eyes', 'For What Its Worth', 'For What Its Worth' ],
  [ 'hard', 'Which actor recorded an album called "The Transformed Man"?', 'Joe Shepherd', 'Richard Chamberlain', 'William Shatner', 'Sean Connery', 'William Shatner' ],
  [ 'hard', 'What year did Eddie Cochran die?', '1963', '1960', '1969', '1966', '1960' ],
  [ 'hard', 'What group consisted of members Gary Troxel, Gretchen Christopher, and Barbara Ellis?', 'The Four Preps', 'The Ames Brothers', 'The Fleetwoods', 'The Everly Brothers', 'The Fleetwoods' ],
  [ 'hard', 'Who were the only two Beatles to release recordings on the Apple subsidiary called Zapple?', 'Paul & Ringo', 'John & George', 'John & Paul', 'Ringo & George', 'John & George' ],
  [ 'hard', 'After playing bass for The Byrds, what group did Chris Hillman join?', 'Kool & The Gang', 'The Flying Burrito Brothers', 'The Gaylords', 'The Memphis Horns', 'The Flying Burrito Brothers' ],
  [ 'hard', 'Who sang the lines "Rape! Murder! Its just a shot away, its just a shot away!" in The Rolling Stones "Gimme Shelter"?', 'Shah Jalal', 'Gordon Lightfoot', 'Sammy Davis, Jr.', 'Merry Clayton', 'Merry Clayton' ],
  [ 'hard', 'What "Im Not Lisa" singer was married to Duane Eddy from 1961-1968?', 'Dionne Warwick', 'Jessi Colter', 'Brenda Lee', 'Petula Clark', 'Jessi Colter' ],
  [ 'hard', 'Who was the lead singer of The Rascals as well as a former member of Joey Dee & The Starliters?', 'Joey Dee', 'Dino Danelli', 'Shay Narang', 'Felix Cavaliere', 'Felix Cavaliere' ],
  [ 'hard', 'Paul Anka and Donny Osmond both had hits with their own version of what song?', 'Puppy Love', 'Lonely Boy', 'Go Away Little Girl', 'Diana', 'Puppy Love' ],
  [ 'hard', 'What were the last names of duo Bruce And Terry?', 'Johnston & Melcher', 'Green & Bryant', 'Rich & Buckley', 'Parikh & Spriggs', 'Johnston & Melcher' ],
  [ 'hard', 'What was the name of the band that visited Gilligan’s Island?', 'The Castaways', 'The Tribals', 'The Monkees', 'The Mosquitos', 'The Mosquitos' ],
  [ 'hard', 'What did Elvis Presley collect from nearly every city he visited?', 'License Plates', 'Police Badges', 'Candles', 'Magnets', 'Police Badges' ],
  [ 'hard', 'What 1967 Beatles film features "Your Mother Should Know"?', 'Magical Mystery Tour', 'Yellow Submarine', 'A Hard Days Night', 'Help!', 'Magical Mystery Tour' ],
  [ 'hard', 'What artist was the founder and leader of James Browns vocal group The Famous Flames?', 'Steve Cunningham', 'Johnny Bennett', 'Jimmy Reed', 'Bobby Byrd', 'Bobby Byrd' ],
  [ 'hard', 'In what year did Tommy James & The Shondells have a #1 hit with "Crimson And Clover"?', '1966', '1960', '1969', '1963', '1969' ],
  [ 'hard', 'Which Supremes hit had these line: "Im aware of where you go; Each time you leave my door"', 'Stop! In The Name of Love', 'Back In My Arms Again', 'The Happening', 'Give A Little Bit', 'Stop! In The Name of Love' ],
  [ 'hard', 'Which songwriter won a Song of the Year Grammy Award in 1969 for "Little Green Apples"?', 'Jimmy Webb', 'Tom T. Hall', 'Paul Simon', 'Bobby Russell', 'Bobby Russell' ],
  [ 'hard', 'What 1966 hit has these lyrics: "I can tell the way you hang your head that youre alone now, youre afraid"', 'Reach Out Ill Be There', 'Cherish', 'Hanky Panky', 'Good Lovin', 'Reach Out Ill Be There' ],
  [ 'hard', 'What "Young And In Love" singer was the nephew of Bing Crosby?', 'Chris Crosby', 'Bill Cosby', 'Bob Crosby', 'David Crosby', 'Chris Crosby' ],
  [ 'hard', 'What band had these lead singers: David Coverdale, Glenn Hughes, Rod Evans and Ian Gillan?', 'The Guess Who', 'Cream', 'Bread', 'Deep Purple', 'Deep Purple' ],
  [ 'hard', 'What 1965 pop hit is the unofficial fight song for Ohio State football?', 'Boot-Leg', 'Hang On Sloopy', 'Shotgut', 'Wooly Bully', 'Hang On Sloopy' ],
  [ 'hard', 'Who was the last artist to perform at the original Woodstock festival?', 'Joan Baez', 'Joe Cocker', 'Jimi Hendrix', 'Janis Joplin', 'Jimi Hendrix' ],
  [ 'hard', 'Which Ricky Nelson song has these lyrics: "Oh my sweet fraulien down in Berlin town, Makes my heart start to yearn"?', 'Travelin Man', 'Call On Me', 'Poor Little Fool', 'For You', 'Travelin Man' ],
  [ 'hard', 'What does the musical term "scherzo" mean?', 'Slow & Drawn Out', 'Fast & Lively', 'Lengthy', 'Repetetive', 'Fast & Lively' ],
  [ 'hard', 'What groups lineup consisted of former singers from The Serendipity Singers and The Pixies Three?', 'The Angels', 'The Chi-Lites', 'The Raindrops', 'The Dells', 'The Angels' ],
  [ 'hard', 'What group consisted of brothers Bill, Brett and Mark?', 'The Hudson Brothers', 'The Chambers Brothers', 'The Osmond Brothers', 'The Isley Brothers', 'The Hudson Brothers' ],
  [ 'hard', 'What was the last name of Booker T. from Booker T & The MGs?', 'McGwire', 'Boone', 'Jones', 'Jamison', 'Jones' ],
  [ 'hard', 'Who wrote "Running Bear," a #1 song in 1960 for Johnny Preston?', 'Buddy Holly', 'Gene Pitney', 'Smokey Robinson', 'J.P. Richardson', 'J.P. Richardson' ],
  [ 'hard', 'Angus and Malcolm Young, from AC/DC, are the younger brothers of George Young from which group?', 'The Bobby Fuller Four', 'The Easybeats', 'The Capitols', 'The Cyrkle', 'The Easybeats' ],
  [ 'hard', 'Which "Easy Rider" star was supposedly the subject of John Lennons 1966 song "She Said She Said"?', 'Paul Newman', 'Peter Fonda', 'Sean Connery', 'James Dean', 'Peter Fonda' ],
  [ 'hard', 'What #1 hit by The Crystals was written by Gene Pitney?', 'Then He Kissed Me', 'Hes A Rebel', 'Uptown', 'Da Doo Ron Ron', 'Hes A Rebel' ],
  [ 'hard', 'What group was Grace Slick a part of before Jefferson Airplane?', 'Washrag', 'Soulsister', 'The Great Society', 'Panhandle', 'The Great Society' ],
  [ 'hard', 'What girl group also recorded as The Four Pennies?', 'The Angels', 'The Supremes', 'The Chiffons', 'The Shangri-Las', 'The Chiffons' ],
  [ 'hard', 'In what year did Bobby Vinton have a #1 hit with "There! Ive Said It Again"?', '1967', '1961', '1969', '1964', '1964' ],
  [ 'hard', 'What is the name of the theme song from the TV show "Benny Hill"?', 'The Happy Organ', 'Yaketty Sax', 'Alley-Oop', 'The Hucklebuck', 'Yaketty Sax' ],
  [ 'hard', 'What 1966 hit song begins with the lyrics: "I love the colorful clothes she wears/ And the way the sunlight plays upon her hair.."?', 'Good Vibrations', 'Wild Thing', 'You Keep Me Hangin On', 'Hanky Panky', 'Good Vibrations' ],
  [ 'hard', 'In a certain Beatles song, who checked into his room, only to find Gideon’s Bible?', 'Rocky Raccoon', 'Paul Campbell', 'Eleanor Rigby', 'Paperback Writer', 'Rocky Raccoon' ],
  [ 'hard', 'Which guitarist played on Tom Jones "Its Not Unusual"?', 'Keith Richards', 'Eric Clapton', 'Jimi Hendrix', 'Jimmy Page', 'Jimmy Page' ],
  [ 'hard', 'Who was married to actress Angie Dickinson from 1966-1980?', 'Burt Bacharach', 'Brian Wilson', 'Paul Anka', 'Lewis Lea', 'Burt Bacharach' ],
  [ 'hard', 'What 1960s song by Simon & Garfunkel (and also Harpers Bizarre) starts "Slow down, you move to fast, you got to make the morning last"?', 'I Am A Rock', '59th Street Bridge Song', 'Homeward Bound', 'Cecillia', '59th Street Bridge Song' ],
  [ 'hard', 'Who was country singer Jessi Colter married to from 1961-1968?', 'Merle Haggard', 'Duane Eddy', 'Carl Smith', 'Hank Locklin', 'Duane Eddy' ],
  [ 'hard', 'Before joining Atlanta Rhythm Section, what group were Dean Daughtry and Bob Nix a part of?', 'The Box Tops', 'The Candymen', 'The Formations', 'The Avant Garde', 'The Candymen' ],
  [ 'hard', 'Who wrote the theme to TVs "The Tonight Show"?', 'Englebert Humperdink', 'Ray Price', 'Paul Anka', 'Herb Alpert', 'Paul Anka' ],
  [ 'hard', 'What stringed symphonic instrument has a pedestal and a crown?', 'Violin', 'Mandolin', 'Harp', 'Cello', 'Harp' ],
  [ 'hard', 'What group was formed in Woodstock, New York?', 'The Searchers', 'The Beatles', 'The Raiders', 'The Band', 'The Band' ],
  [ 'hard', 'Which Nancy Sinatra song was sampled in Robbie Williams hit "Millenium"?', 'These Boots Are Made For Walkin', 'Sugar Town', 'You Only Live Twice', 'Somethin Stupid', 'You Only Live Twice' ],
  [ 'hard', 'In what year did Chubby Checkers song "The Twist" hit #1 for the second time?', '1962', '1966', '1968', '1964', '1962' ],
  [ 'hard', 'Which pop group included brothers Bill, Bob, Paul, Barry, and John?', 'The Monkees', 'The Cowsills', 'The Intruders', 'The Kinks', 'The Cowsills' ],
  [ 'hard', 'In which of these James Bond movies did Shirlely Bassey NOT sing the theme song?', 'The Spy Who Loved Me', 'Diamonds Are Forever', 'Moonraker', 'Goldfinger', 'The Spy Who Loved Me' ],
  [ 'hard', 'What Dion hit has these lyrics: "Heres the moral and the story from the guy who knows, I fell in love and my love still grows"?', 'Abraham, Martin & John', 'Im A Fool', 'Runaround Sue', 'Little Diane', 'Runaround Sue' ],
  [ 'hard', 'Which songwriter won a Song of the Year Grammy Award in 1968 for "Up, Up And Away"?', 'Jimmy Webb', 'John Hartford', 'Tom Jones', 'Bobbie Gentry', 'Jimmy Webb' ],
  [ 'hard', 'Who won the Grammy Award for Best New Artist in 1963?', 'Allan Sherman', 'Vaughn Meader', 'The New Christy Minstrels', 'Robert Goulet', 'Robert Goulet' ],
  [ 'hard', 'What band did Chester Thompson play drums for in the 19Sixties and 1970s?', 'Genesis', 'The Rolling Stones', 'Yes', 'Rush', 'Genesis' ],
  [ 'hard', 'In what year did "Days Of Wine And Roses" win a Best Original Song Academy Award?', '1952', '1957', '1962', '1967', '1962' ],
  [ 'hard', 'What were Ferrante & Teichers first names?', 'Arthur & Louis', 'Victor & Narvel', 'George & Charles', 'Melanie & Shearry', 'Arthur & Louis' ],
  [ 'hard', 'What Buddy Holly song appeared on the Beatles albums "Beatles For Sale" and "Beatles VI" ?', 'Eight Days A Week', 'No Reply', 'Words Of Love', 'Revolution', 'Words Of Love' ],
  [ 'hard', 'What singer was the star of the TV show "Ben Casey"?', 'B.J. Thomas', 'Vincent Edwards', 'Guy Marks', 'Bobby Sherman', 'Vincent Edwards' ],
  [ 'hard', 'What Canadian band has a hit with “The Unicorn” in 1968?', 'The Blues Magoos', 'The Irish Rovers', 'Rush', 'The Kinks', 'The Irish Rovers' ],
  [ 'hard', 'What R&B singer was married to Candi Staton?', 'Clarence Carter', 'Stevie Wonder', 'Lionel Richie', 'Smokey Robinson', 'Clarence Carter' ],
  [ 'hard', 'Which Crosby, Stills, Nash and Young song begins with the lyrics "Its getting to the point where Im no fun anymore"?', 'Marrakesh Express', 'Carry On', 'Just A Song Before I Go', 'Suite Judy Blue Eyes', 'Suite Judy Blue Eyes' ],
  [ 'hard', 'What Roy Orbison hit had these lyrics: "Then all at once, he was standing there, So sure of himself, his head in the air"?', 'Blue Angel', 'Leah', 'Running Scared', 'Oh, Pretty Woman', 'Running Scared' ]
]

sixties_questions.each do |quiz_level, query, a, b, c, d, correct_answer|
  sixties_quiz.questions.create( quiz_level: quiz_level, query: query, a: a, b: b, c: c, d: d, correct_answer: correct_answer )
end