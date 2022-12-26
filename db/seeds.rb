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
links: "https://www.youtube.com/channel/UCRoHr5FoIzQK7vHr5Of4QDQ", tag: "Blues", 
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
links: "https://tomizukaband.wixsite.com/tomizukayasunosuke/videos", tag: "Blues", 
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
  tag: "武道館",
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
  body: "写真もありがとう~
先日の多摩川での野外ライブ写真です。",
  tag: "",
  is_deleted: false,
  )
  post3.images.attach(io: File.open(Rails.root.join("app/assets/images/tamagawa1.jpg")), filename: "tamagawa1.jpg")
  
 user5=User.create!(
  id:5,
  email: "d@d", 
  name: "モンスターカクメイ", 
  nick_name: "モンスターカクメイ", 
  address: nil, 
  profile: "2020年から活動をスタート。ライブ実績1回で大型フェス、
【スーパーソニック2021】に出場し、関係者から大きな話題を呼ぶ。
主に東京・名古屋・京都・大阪で活動している。

SNSではTikTokの公式アーティストとして活動中。
ライブ中のハプニング動画が140万回以上再生された。", 
  action_range: "東京・名古屋・京都・大阪", 
  action_style: "ロック、バンド", 
  links: "https://www.monstercakumay.com", tag: "ロック", 
  holidays: nil, shop_style: nil, is_deleted: false, 
  role: "artist",
  password:'dddddd')
  user5.image.attach(io: File.open(Rails.root.join("app/assets/images/moncaku.jpg")), filename: "moncaku.jpg") 
  
  post5=Post.create!(
  id: 5,
  user_id: 5,
  body: "私たちの代表曲[Rock Star]が配信スタートしました！
  みんな聞いてねー！",
  tag: "rock",
  is_deleted: false,
  )
  post5.images.attach(io: File.open(Rails.root.join("app/assets/images/rockstar.jpg")), filename: "rockstar.jpg")
  
  post6=Post.create!(
  id: 6,
  user_id: 2,
  body: "武蔵小山 6Grams ありがとうございました〜
  大変盛り上がりました〜",
  tag: "弾き語り",
  is_deleted: false,
  )
  post6.images.attach(io: File.open(Rails.root.join("app/assets/images/tomi1.jpg")), filename: "tomi1.jpg")
  
user6=User.create!(
id: 6, email: "e@e", 
name: "LiveSpace早稲田RiNen", nick_name: nil, 
address: "〒162-0042 東京都新宿区早稲田町74
早稲田オアシスビルB1F", 
profile: "天然素材の「麻（Linen:リネン）」の特徴である風通しの良さや触り心地の良さをイメージし、
この場所も風通しの良い場所であって欲しい、そして心地良い場所であって欲しいと言う願いと「
理念（Rinen:リネン）」想いを伝える場所、想いが伝わる場所であったら、と言う願いを込め命名しました。
 
全てのパフォーマンスに敬意を払い
全力でサポートさせて頂きます。
 
LiveSpace早稲田RiNen", 
action_range: nil, action_style: nil, 
links: "https://www.waseda-rinen.com", 
tag: "", holidays: "月曜から金曜 9:00-18:00、土日祝祭日 10:00-18:00", 
shop_style: "ライブハウス", is_deleted: false, role: "shop",
password:'eeeeee'
)
user6.image.attach(io: File.open(Rails.root.join("app/assets/images/rinen.jpg")), filename: "rinen.jpg")

User.create!(
id:7,
email: "g@guest", 
name: "ゲスト", 
nick_name: "ゲストさん", 
address: nil, 
profile: "ゲスト様、本日はこのページをご覧いただきありがとうございます。
皆様のお役に立てるよう、今後とも精進していく所存です。", 
action_range: nil, 
action_style: nil, 
links: "", tag: "", 
holidays: nil, shop_style: nil, is_deleted: false, 
role: "listener",
password:'guests')

user8=User.create!(
id: 8, email: "f@f", 
name: "赤坂Cantina", nick_name: nil, 
address: "〒107-0052東京都港区赤坂2-13-17シントミ赤坂第2ビル3F", 
profile: "赤坂TBS近くで営業しているライブハウス＆バー。
アマチュアバンドのライブ企画、プロを呼んでのライブパーティー。イベント貸切・結婚式二次会など。
🚃最寄：千代田線 赤坂駅から徒歩5分／銀座線　赤坂見附駅から徒歩10分　　☎03-3586-7476", 
action_range: nil, action_style: nil, 
links: "https://akasakac2020.wixsite.com/livehouse", 
tag: "赤坂", holidays: "年末年始", 
shop_style: "ライブハウス", is_deleted: false, role: "shop",
password:'ffffff'
)
user8.image.attach(io: File.open(Rails.root.join("app/assets/images/akasaka_f.jpg")), filename: "akasaka_f.jpg")

user9=User.create!(
id: 9, email: "fender@f", 
name: "fender Japan", nick_name: nil, 
address:"〒150-0001 東京都渋谷区神宮前3丁目1番30号", 
profile:"1946年から続く輝かしい歴史を持つフェンダーは、
ロックからカントリー＆ウェスタン、ジャズ、R&Bなど、ほぼ世界中のすべての音楽ジャンルにおいて、
それらに触れ、表現してきました。ビギナーや愛好家から、世界的に賞賛されているアーティストやパフォーマーまで、
多くの人がフェンダーの楽器とアンプを使用しており、それは敬意を表される音楽業界の代名詞となるのみでなく、
文化の象徴にもなっています。わたしたちは、世界中でTHE SPIRIT OF ROCK-N-ROLL®（ロックンロール魂）
を守り続けることを企業のビジョンに、そして全世界の音楽ファンの期待を上回ることをミッションに掲げています。",
action_range: nil, action_style: nil, 
links: "https://www.fender.com/ja-JP/start", 
tag: "ギター、ベース、アンプ", holidays: "年末年始", 
shop_style: "楽器メーカー(お問い合わせは各販売店へ）", is_deleted: false, role: "maker",
password:'ffffff'
)
user9.image.attach(io: File.open(Rails.root.join("app/assets/images/fender-logo.jpg")), filename: "fender-logo.jpg")

Post.create!(
   id: 7,
  user_id: 4,
  body: "蒔田駅近くのわみんです。
  2022年もお世話になりました
  また来年皆様にお会いできるのを
  楽しみにしています。",
  tag: "わみん",
  is_deleted: false,
  )