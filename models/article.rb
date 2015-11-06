class Article
  # This represents a list of articles you have in your database
  ARTICLES = [
    {
      id: '1',
      title: 'Winter is Coming Time to Go Hiking',
      image: 'url(\'/images/take_a_hike.jpg\')',
      intro: 'Winter is approaching fast, so hurry up and take out your hiking equipment from the closet - we have some great tracks for you to try before it\'s too late.',
      author: 'Mister McManus',
      publish_date: '10 NOV 2015',
      likes: 1759,
      comments: 320,
      free_content: %(<p>You may have been expecting to find an article about winter hiking, which is a fairly sensible expectation. However, what you will find here, in fact, is a lot of good looking filler text. With the exception of this bit of text, of course, which was lovingly hand-crafted.</p>
                      <p>Yr asymmetrical cornhole, bushwick schlitz DIY literally helvetica. Deep v chillwave farm-to-table fingerstache helvetica, schlitz drinking vinegar. Taxidermy normcore locavore, four loko tofu listicle street art waistcoat trust fund jean shorts pabst wayfarers chillwave forage pop-up. Small batch fingerstache chartreuse cardigan, tattooed messenger bag cliche godard kinfolk gluten-free kombucha raw denim. Sustainable sartorial pinterest craft beer fap skateboard cardigan, listicle YOLO. Etsy bespoke leggings, photo booth crucifix freegan cray. Echo park cray scenester typewriter, offal godard you probably haven't heard of them neutra narwhal lomo forage art party.</p>
                      <p class="excerpt">This excerpt is supposed to make you feel engaged. Does it fill you with determination?</p>
                      <p>Scenester authentic cardigan hammock austin literally. Squid farm-to-table etsy mustache, hella butcher selfies authentic whatever meh. Retro wayfarers semiotics, thundercats cronut tofu fanny pack beard gentrify. Whatever squid humblebrag, chia viral tofu hella flannel fashion axe cliche cornhole. Yr 3 wolf moon mixtape quinoa banh mi green juice umami, squid deep v typewriter flannel drinking vinegar. Distillery skateboard pitchfork, VHS intelligentsia plaid cornhole forage kogi actually ennui shoreditch street art franzen wolf. Freegan synth occupy YOLO umami bitters.</p>),
      paid_content: %(
        <p>In the late 1970s, the development of Kevlar then Spectra flying lines and more controllable kites with improved efficiency contributed to practical kite traction. In 1978, Ian Day's "FlexiFoil" kite-powered Tornado catamaran exceeded 40 km/h.
        In October 1977 Gijsbertus Adrianus Panhuise (Netherlands) received the first patent[7] for KiteSurfing. The patent covers, specifically, a water sport using a floating board of a surf board type where a pilot standing up on it is pulled by a wind catching device of a parachute type tied to his harness on a trapeze type belt. Although this patent did not result in any commercial interest, Gijsbertus Adrianus Panhuise could be considered as the originator of KiteSurfing.
        Through the 1980s, there were occasionally successful attempts to combine kites with canoes, ice skates, snow skis,[8] water skis and roller skates.
        Throughout the 1970s and early 1980s, Dieter Strasilla from Germany developed parachute-skiing and later perfected a kiteskiing system using self made paragliders and a ball-socket swivel allowing the pilot to sail upwind and uphill but also to take off into the air at will.[9] Strasilla and his Swiss friend Andrea Kuhn used this invention also in combination with surfboards and snowboards, grasskies and selfmade buggies.[10] One of his patents describes in 1979 the first use of an inflatable kite design for kitesurfing.[11]
        Two brothers, Bruno Legaignoux and Dominique Legaignoux, from the Atlantic coast of France, developed kites for kitesurfing in the late 1970s and early 1980s and patented an inflatable kite design in November 1984, a design that has been used by companies to develop their own products.
        In 1990, practical kite buggying was pioneered by Peter Lynn at Argyle Park in Ashburton, New Zealand. Lynn coupled a three-wheeled buggy with a forerunner of the modern parafoil kite. Kite buggying proved to be very popular worldwide, with over 14,000 buggies sold up to 1999.
        The development of modern day kitesurfing by the Roeselers in the USA and the Legaignoux in France carried on in parallel to buggying. Bill Roeseler, a Boeing aerodynamicist, and his son Cory Roeseler patented the "KiteSki" system which consisted of water skis powered by a two line delta style kite controlled via a bar mounted combined winch/brake. The KiteSki was commercially available in 1994. The kite had a rudimentary water launch capability and could go upwind. In 1995, Cory Roeseler visited Peter Lynn at New Zealand's Lake Clearwater in the Ashburton Alpine Lakes area, demonstrating speed, balance and upwind angle on his 'ski'. In the late 1990s, Cory's ski evolved to a single board similar to a surfboard.[5]
        In 1996, Laird Hamilton and Manu Bertin were instrumental in demonstrating and popularising kitesurfing off the Hawaiian coast of Maui while in Florida Raphaël Baruch experimented riding windsurfing boards with various foil kites and changing the name of the sport from flysurfing to kitesurfing.
        In 1997, the Legaignoux brothers developed and sold the breakthrough "Wipika" kite design which had a structure of preformed inflatable tubes and a simple bridle system to the wingtips, both of which greatly assisted water re-launch. Bruno Legaignoux has continued to improve kite designs, including developing the bow kite design, which has been licensed to many kite manufacturers.
        In 1997, specialized kite boards were developed by Raphaël Salles and Laurent Ness. By the end of 1998 kitesurfing had become an extreme sport, distributed and taught through a handful group of shops and schools worldwide. The first competition was held on Maui in September 1998 and won by Flash Austin.[5]
        Starting in 1999, kitesurfing became a mainstream sport with the entry of key windsurfing manufacturers namely Naish and Neil Pryde. Single direction boards derived from windsurfing and surfing designs became the dominant form of kiteboard. From 2001 onwards, twin-tip bi-directional boards became more popular for most flat water riders, with directional boards still in use for surf conditions.
        In May 2012, the course racing style of kitesurfing was announced as a sport for the 2016 Rio Olympics,[12] replacing windsurfing. However, after a vote by the General Assembly of ISAF in November 2012 (in Dun Laoghaire, Ireland) the RSX windsurfer was reinstated for both Men and Women this was an unprecedented decision when the constituent members of ISAF overthrew a decision made by the ISAF Council [13]Kitesurfing remains therefore a non-Olympic sport until 2020 at the earliest. The ISAF mid-year meeting of May 2013 proposed seeking an eleventh medal to include kitesurfing in 2020 [14] at the same time there was a commitment made to retain the existing other 10 classes as they are for 2020 and even 2024 including the RSX windsurfer for men and women.</p> )
    },
    {
      id: '2',
      title: 'It\'s Not a Lake, It\'s an Ocean',
      image: 'url(\'/images/cauldron_lake.png\')',
      intro: 'The eighth deepest lake in the world, Cauldron Lake is a caldera lake, formed in a volcanic crater.',
      author: 'Alan Wake',
      publish_date: '14 MAY 2010',
      likes: 837,
      comments: 666,
      free_content: %(<p>Have you ever played Alan Wake? It's a really great computer game. Almost great enough for you to get out of your chair this very instant, sit back and buy a copy.</p>
                      <p>I'm sure you have more pressing concerns, however, so I'll let you get back to that.</p>),
      paid_content: %(<p>Humblebrag sapiente biodiesel venmo. Kombucha semiotics cardigan, flannel bitters twee excepteur cupidatat. Ex quinoa pug thundercats letterpress pitchfork, accusamus lumbersexual fixie vegan skateboard sapiente pabst labore. Flexitarian meditation before they sold out sint occaecat. Marfa fingerstache in, ullamco quis chambray kinfolk scenester tempor do bushwick et ea. +1 typewriter try-hard, swag letterpress health goth waistcoat. Everyday carry farm-to-table before they sold out DIY.</p>
                      <p>Letterpress ennui ramps, officia cupidatat seitan chicharrones raw denim. Pork belly flannel shabby chic craft beer normcore, cillum mustache enim gentrify odio dolore ad 90's narwhal. Narwhal mixtape banh mi culpa artisan, cronut aute occupy cray vegan ex cliche chillwave. Blog eiusmod pug, cillum green juice photo booth yuccie non art party post-ironic nihil kale chips est lumbersexual. Mollit cillum magna celiac consequat mumblecore, direct trade roof party ad odio tacos duis put a bird on it locavore. Kombucha occaecat quis est, pop-up microdosing messenger bag do nulla gluten-free nostrud. Selvage minim +1 ennui 3 wolf moon selfies fugiat, austin ut leggings asymmetrical knausgaard kombucha.</p>)
    },
    {
      id: '3',
      title: 'Metroids and You',
      image: 'url(\'/images/metroid.jpg\')',
      intro: 'Metroids are organisms created by the Chozo. First discovered on the planet SR388 years after their introduction, they were promptly used as a bioweapon by the Space Pirates. Metroids feed on the "life energy" of their prey in a manner similar to the way a leech drains a host organism\'s blood.',
      author: 'Samus Aran',
      publish_date: '6 NOV 2015',
      likes: 234,
      comments: 94,
      free_content: %(<p>Authentic godard craft beer, sint mlkshk hoodie mumblecore consequat chartreuse tattooed flexitarian asymmetrical retro direct trade. Health goth iPhone small batch cillum, anim 8-bit bushwick. Church-key paleo swag microdosing duis. Yr street art esse blog, meh deserunt waistcoat qui mumblecore blue bottle reprehenderit sunt chillwave pop-up. Sapiente kale chips craft beer sunt, retro dolore ugh 90's occaecat. Semiotics gentrify sed minim fanny pack viral. Keytar photo booth incididunt +1, ramps organic enim brunch.</p>
                      <p>Crucifix enim mlkshk freegan, cred godard et. Skateboard humblebrag artisan blue bottle placeat drinking vinegar. Dolor kale chips narwhal occupy cray intelligentsia. Put a bird on it pitchfork laborum banh mi photo booth. Godard fixie sustainable ut selfies pour-over, cupidatat literally actually yr duis messenger bag aesthetic cliche. Disrupt semiotics exercitation kale chips. Aliquip enim artisan, +1 banh mi lumbersexual fixie bicycle rights intelligentsia deserunt helvetica yr.</p>),
      paid_content: %(<p>Humblebrag sapiente biodiesel venmo. Kombucha semiotics cardigan, flannel bitters twee excepteur cupidatat. Ex quinoa pug thundercats letterpress pitchfork, accusamus lumbersexual fixie vegan skateboard sapiente pabst labore. Flexitarian meditation before they sold out sint occaecat. Marfa fingerstache in, ullamco quis chambray kinfolk scenester tempor do bushwick et ea. +1 typewriter try-hard, swag letterpress health goth waistcoat. Everyday carry farm-to-table before they sold out DIY.</p>
                      <p>Letterpress ennui ramps, officia cupidatat seitan chicharrones raw denim. Pork belly flannel shabby chic craft beer normcore, cillum mustache enim gentrify odio dolore ad 90's narwhal. Narwhal mixtape banh mi culpa artisan, cronut aute occupy cray vegan ex cliche chillwave. Blog eiusmod pug, cillum green juice photo booth yuccie non art party post-ironic nihil kale chips est lumbersexual. Mollit cillum magna celiac consequat mumblecore, direct trade roof party ad odio tacos duis put a bird on it locavore. Kombucha occaecat quis est, pop-up microdosing messenger bag do nulla gluten-free nostrud. Selvage minim +1 ennui 3 wolf moon selfies fugiat, austin ut leggings asymmetrical knausgaard kombucha.</p>)
    },
    {
      id: '4',
      title: 'Neighbours - So Nutritious',
      image: 'url(\'/images/neighbour.jpg\')',
      intro: 'Neighbours aren\'t just people you can meet, they are also people you can eat! One might say they are people you can meat.',
      author: 'Hannibal Lecter',
      publish_date: '6 NOV 2015',
      likes: 135,
      comments: 594,
      free_content: %(<p>Cornhole PBR&B +1 food truck pug. Cillum cred pug blue bottle four loko esse. Poutine wayfarers knausgaard, polaroid meggings +1 consectetur minim pickled leggings nihil fugiat occaecat. Biodiesel williamsburg messenger bag, fingerstache nihil mollit dolor asymmetrical. Locavore fingerstache deserunt food truck, pinterest semiotics taxidermy tattooed paleo post-ironic. Quis in fugiat salvia next level, forage shoreditch tousled nesciunt street art echo park photo booth. Try-hard ea irony health goth sartorial do gluten-free, keffiyeh you probably haven't heard of them migas.</p>
                      <p>Bitters migas polaroid, eu tumblr letterpress elit tilde. Artisan pug lumbersexual, cliche meh blue bottle occupy authentic brooklyn street art. Literally brooklyn mlkshk commodo echo park. Veniam wayfarers meggings, dolor deep v distillery artisan cupidatat DIY kickstarter gluten-free sed tofu leggings. Ea keffiyeh tote bag ullamco, kogi +1 venmo veniam 90's keytar XOXO chia tattooed listicle. Dolore non dreamcatcher, yr disrupt kitsch pork belly shoreditch kale chips flexitarian scenester slow-carb cred. Food truck paleo franzen salvia.</p>),
      paid_content: %(<p>Aute migas craft beer, ennui meditation echo park brunch sapiente fingerstache nesciunt wolf. PBR&B plaid sunt umami veniam knausgaard fap deep v DIY actually iPhone pitchfork, banjo consequat four dollar toast. Bicycle rights kale chips freegan aliqua. Tousled kale chips fashion axe tacos adipisicing put a bird on it. Nesciunt waistcoat ea ex, schlitz hoodie neutra chia nulla selvage kinfolk VHS adipisicing vero. Sed vinyl master cleanse humblebrag pour-over hashtag, thundercats ex viral. Tilde viral brunch, gluten-free ramps gentrify cred non dreamcatcher voluptate placeat bespoke occaecat.</p>
                      <p>Tousled chillwave church-key, actually tofu disrupt organic. Tattooed meditation offal, iPhone cliche chicharrones post-ironic culpa distillery cornhole hashtag. Cupidatat fixie umami pinterest in labore. Single-origin coffee aute pinterest typewriter food truck. Biodiesel tousled try-hard, incididunt paleo church-key pork belly leggings ullamco ea flexitarian meggings fashion axe plaid. Elit chia sriracha, street art tattooed consequat pour-over id portland ethical minim. Gluten-free blue bottle artisan, assumenda tousled kombucha mollit lo-fi helvetica pitchfork nesciunt fanny pack minim YOLO.</p>)
    },
    {
      id: '5',
      title: 'Having Your Cake and Eating It',
      image: 'url(\'/images/cake.jpg\')',
      intro: 'The trick is to swallow the cake whole. These handy tips will get you on the path to becoming a cake python in no time!',
      author: 'Dude Duderson',
      publish_date: '6 NOV 2015',
      likes: 223,
      comments: 937,
      free_content: %(<p>Shoreditch thundercats drinking vinegar, scenester tacos wayfarers tofu labore selfies heirloom street art hoodie fanny pack. Tattooed minim knausgaard, YOLO photo booth kombucha seitan offal. Flannel velit williamsburg ennui, consectetur hammock jean shorts exercitation blog. Whatever cronut irony swag. Sed kale chips four dollar toast before they sold out. Cliche keytar letterpress blog. Blue bottle eu lomo drinking vinegar, distillery bitters consectetur.</p>
                      <p>Irony 90's brooklyn, hella PBR&B roof party labore austin accusamus photo booth. Non health goth chambray pop-up veniam chillwave pinterest, tattooed cornhole yr four loko kitsch ugh microdosing. Single-origin coffee veniam 8-bit blog aliquip heirloom. Mollit biodiesel meditation try-hard, sint velit voluptate messenger bag culpa hella pariatur. Gluten-free marfa placeat echo park crucifix irure tumblr, sriracha aute laboris waistcoat bicycle rights. Gluten-free non schlitz est vero nisi tilde, fanny pack you probably haven't heard of them. Intelligentsia fanny pack tote bag meggings, try-hard forage pariatur organic cred selfies cillum listicle exercitation.</p>),
      paid_content: %(<p>IPhone deserunt occaecat cornhole mollit laborum readymade, waistcoat tattooed austin. Mixtape beard tumblr, master cleanse XOXO migas trust fund occaecat scenester everyday carry tilde pickled hashtag. Crucifix kitsch wolf poutine ugh labore. Neutra dreamcatcher artisan, celiac you probably haven't heard of them fashion axe street art 90's sustainable waistcoat crucifix hashtag nisi nesciunt. Nisi officia qui mixtape gluten-free. Organic incididunt helvetica poutine, artisan master cleanse cupidatat. Consequat microdosing fanny pack truffaut slow-carb pitchfork.</p>
                      <p>Assumenda mollit raw denim chia, godard portland helvetica hoodie gluten-free cupidatat anim sriracha ullamco. Lo-fi beard quinoa mollit. Bicycle rights cliche offal brooklyn, duis echo park everyday carry tacos pug banh mi franzen. Sed tousled chia, intelligentsia neutra qui fap. Laboris jean shorts delectus proident sunt seitan. Brooklyn hoodie direct trade dolor, selvage seitan vice proident hashtag synth truffaut. Next level taxidermy stumptown humblebrag knausgaard.</p>)
    }
  ]

  def self.all
    ARTICLES.map{|article| Article.new(article) }
  end

  def self.find id
    all.find{ |article| article.id == id }
  end

  attr_reader :id, :title, :image, :intro, :author, :publish_date, :likes, :comments, :free_content, :paid_content

  def initialize(id:, title:, image:, intro:, author:, publish_date:, likes:, comments:, free_content:, paid_content:)
    @id = id
    @title = title
    @image = image
    @intro = intro
    @author = author
    @publish_date = publish_date
    @likes = likes
    @comments = comments
    @free_content = free_content
    @paid_content = paid_content
  end

  def related
    Article.all.reject{|a| a.id == id}.shuffle.take(3)
  end
end
