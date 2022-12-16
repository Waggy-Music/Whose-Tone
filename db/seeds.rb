# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
    email: 'test@test.com',
    password: 'mmmmmm',
)
Information.create!(
  id:1,
  admin_id:1,
  body:"管理者より
  音楽家のコミュニティサイト[Whose Tone?]が開設しました。
  このページを通して皆様の新たなコミュニティを作る
  手助けになれたら幸いです。
  音楽で「ライブ」に勝るものはないというのが私の考えです。
  新たな「ライブ」にともに出かけましょう！",
  tag:"管理者",
  
  )

user=User.create!(
id:1,
email: "test@test", 
name: "Waggy審司", 
nick_name: "Waggy", 
address: nil, 
profile: "デルタブルースをルーツに持ち
リアルライブ、17配信、Clubhouse等
泥臭く活動中。
 
ラーメンはちぢれ麺派　特技はエコ運転", 
action_range: "神奈川県、東京都", 
action_style: "ギター弾き語り", 
links: "", tag: "Blues", 
holidays: nil, shop_style: nil, is_deleted: false, 
role: "artist",
password:'mmmmmm')
user.image.attach(io: File.open(Rails.root.join("app/assets/images/waggy.jpg")), filename: "waggy.jpg")

user2=User.create!(
id:2,
email: "a@a", 
name: "富塚保之助", 
nick_name: "富塚保之助", 
address: nil, 
profile: "あなたにソウルフルな歌をお届けしますよ〜
見た目怖いって言われるけどほんとは優しいんすよ〜", 
action_range: "神奈川県、東京都", 
action_style: "ギター弾き語り、バンド", 
links: "", tag: "Blues", 
holidays: nil, shop_style: nil, is_deleted: false, 
role: "artist",
password:'aaaaaa')
user2.image.attach(io: File.open(Rails.root.join("app/assets/images/tomi.jpg")), filename: "tomi.jpg")

user3=User.create!(
id:3,
email: "b@b", 
name: "Eric", 
nick_name: "エリック・かけ布団", 
address: nil, 
profile: "こんにちは！僕は世界を駆け回っています。日本はたまにいきます。", 
action_range: "地球全般（旅費が出れば）", 
action_style: "ギター弾き語り、バンド", 
links: "", tag: "Guitar", 
holidays: nil, shop_style: nil, is_deleted: false, 
role: "artist",
password:'bbbbbb')
user3.image.attach(io: File.open(Rails.root.join("app/assets/images/strat.jpg")), filename: "strat.jpg")

user4=User.create!(
id: 4, email: "c@c", 
name: "珈琲館わみん", nick_name: nil, 
address: "神奈川県横浜市南区宮元町3-56", 
profile: "日中の喫茶は、BGMはジャズが流れ、落ち着きある店内です。夜は音楽イベントなどを開催しています！電話番号：045-711-7407", 
action_range: nil, action_style: nil, 
links: "https://maitawamin.web.fc2.com/", 
tag: "", holidays: "月曜から金曜 9:00-18:00、土日祝祭日 10:00-18:00", 
shop_style: "ライブできる飲食店", is_deleted: false, role: "shop",
password:'cccccc'
)
user4.image.attach(io: File.open(Rails.root.join("app/assets/images/wamin.jpg")), filename: "wamin.jpg")

Post.create!(
   id: 1,
  user_id: 3,
  body: "こんにちは。エリックです。
  今度日本に行けるのはいつかな？
  楽しみにしています。",
  tag: "",
  is_deleted: false,
  )
  post2=Post.create!(
   id: 2,
  user_id: 1,
  body: "平和祈念ライブ！
ありがとうございました！
ラッキーキャッツさん、マッカチンさんと
共演できて楽しかったです！
うちのバンドは
ベースが急遽来れなくなり
どうなるかと思いましたが
なんとかこなせました。
写真も頂きありがとうございます！
また共演させてもらえたらと思います！",
  tag: "",
  is_deleted: false,
  )
  post2.images.attach(io: File.open(Rails.root.join("app/assets/images/waggy1.jpg")), filename: "waggy1.jpg")
  
  post3=Post.create!(
  id: 3,
  user_id: 2,
  body: "写真も頂きありがとうございます！
先日の多摩川での野外ライブ写真ですー",
  tag: "",
  is_deleted: false,
  )
  post3.images.attach(io: File.open(Rails.root.join("app/assets/images/tamagawa1.jpg")), filename: "tamagawa1.jpg")