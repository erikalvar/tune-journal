Song.create!([
  {user_id: 1, title: "Rawhide", composer: "Bill Monroe", key: "G", mode: "Major", tempo: 144, duration: "quarter", status: "learned", notes: "That ain't no part of nothin'"},
  {user_id: 1, title: "BG Stomp", composer: "Bill Monroe", key: "D", mode: "Major", tempo: 96, duration: "quarter", status: "learning", notes: "That ain't no part of nothin'"},
  {user_id: 1, title: "Liza Jane", composer: "Bill Monroe", key: "G", mode: "Major", tempo: 122, duration: "quarter", status: "to_learn", notes: "That ain't no part of nothin'"},
  {user_id: 1, title: "Blackberry Blossom", composer: "Traditional", key: "G", mode: "Major", tempo: 140, duration: "quarter", status: "learning", notes: "Practice chords"},
  {user_id: 1, title: "Fisher's Hornpipe", composer: "Traditional", key: "D", mode: "Major", tempo: 120, duration: "quarter", status: "learning", notes: "Practice B-part"},
  {user_id: 1, title: "Soldier's Joy", composer: "Traditional", key: "D", mode: "Major", tempo: 100, duration: "quarter", status: "learning", notes: "Practice B-part"},
  {user_id: 1, title: "Temperance Reel", composer: "Traditional", key: "G", mode: "Major", tempo: 111, duration: "quarter", status: "learned", notes: "Practice B-part"},
  {user_id: 1, title: "Red Wing", composer: "Traditional", key: "G", mode: "Major", tempo: 122, duration: "quarter", status: "learned", notes: "Listen to swing chords"},
  {user_id: 1, title: "Salt Creek", composer: "Traditional", key: "A", mode: "Major", tempo: 144, duration: "quarter", status: "to_learn", notes: "Play in G capo 2"}
])
Tag.create!([
  {name: "Country", user_id: 1},
  {name: "Bebop", user_id: 1},
  {name: "BG", user_id: 1}
])
Setlist.create!([
  {name: "Rockwood", user_id: 1, event_date: "2021-01-24", public: true},
  {name: "Joe's Pub", user_id: 1, event_date: "2021-01-29", public: false},
  {name: "Sunny's", user_id: 1, event_date: "2021-01-22", public: false},
  {name: "St Mazie", user_id: 1, event_date: nil, public: false}
])
SongTag.create!([
  {song_id: 2, tag_id: 2},
  {song_id: 2, tag_id: 3},
  {song_id: 2, tag_id: 4}
])
SetlistSong.create!([
  {setlist_id: 1, song_id: 2}
])
User.create!([
  {first_name: "Erik", last_name: "Alvar", username: "erikalvar", email: "erik@example.com", password_digest: "$2a$12$qvMtRL7uoIylsowwbbU.n.ixNfmTBtwbh1stjnSfeuUi4bK68Lbyi", profile_picture: nil},
  {first_name: "Garrett", last_name: "Alvar", username: "garrettalvar", email: "garrett@example.com", password_digest: "$2a$12$w5VmzqUtIr4MnVyLq5oWtujRUk4PhY3Htx7y6ehbe2wOTvVW4aMrq", profile_picture: nil}
])
