-- ************************************************************************************
--                            [뉴스레터 TABLE]
--
-- *** Genre는 기존 수업 테이블 중복으로 에러나서 안 만드는게 좋음
-- *** tblSubscriber, tblGenre, tblPreperGenre > 생성 X *** > 구독만 안하면 됨
--
-- ************************************************************************************


-- ****************************
--    [구독자 테이블 생성]
-- ****************************
CREATE TABLE tblSubscriber (
	seq_subscriber	NUMBER	NOT NULL,
	name	VARCHAR2(100)	NOT NULL,
	email	VARCHAR2(100)	NOT NULL,
	subscription_date	DATE	DEFAULT SYSDATE NOT NULL,
	subscription_state	VARCHAR2(30)	NULL,
	subscription_except	VARCHAR2(10)	NULL
);

ALTER TABLE tblSubscriber ADD CONSTRAINT PK_TBLSUBSCRIBER PRIMARY KEY (
	seq_subscriber
);

create sequence seqSubscriber;

ALTER TABLE tblSubscriber modify subscription_except VARCHAR2(10) default 'N';
ALTER TABLE tblSubscriber modify subscription_state VARCHAR2(30) default '구독중';


-- ****************************
--    [장르 테이블 생성]
-- ****************************
CREATE TABLE tblGenre (
	seq_genre	NUMBER	NOT NULL,
	genre	VARCHAR2(30)	NOT NULL
);

ALTER TABLE tblGenre ADD CONSTRAINT PK_TBLGENRE PRIMARY KEY (
	seq_genre
);

set def off;
insert into tblGenre(seq_genre, genre) values (1, 'Electronic');
insert into tblGenre(seq_genre, genre) values (2, 'Folk/Country');
insert into tblGenre(seq_genre, genre) values (3, 'Jazz');
insert into tblGenre(seq_genre, genre) values (4, 'Pop/R&B');
insert into tblGenre(seq_genre, genre) values (5, 'Rock');
insert into tblGenre(seq_genre, genre) values (6, 'Experimental');
insert into tblGenre(seq_genre, genre) values (7, 'Global');
insert into tblGenre(seq_genre, genre) values (8, 'Metal');
insert into tblGenre(seq_genre, genre) values (9, 'Rap/Hip-Hop');

commit;


-- ****************************
--    [구독자 선호장르 테이블 생성]
-- ****************************
CREATE TABLE tblPreperGenre (
	seq	NUMBER	NOT NULL,
	seq_subscriber	NUMBER	NOT NULL,
	seq_genre	NUMBER	NOT NULL
);

ALTER TABLE tblPreperGenre ADD CONSTRAINT PK_TBLPREPERGENRE PRIMARY KEY (
	seq
);

create sequence seqPreperGenre;



-- ****************************
--    [피치포크리뷰 테이블 생성]
-- ****************************
CREATE TABLE tblPitchfork (
	seq_pitchfork	NUMBER	NOT NULL,
	artist	VARCHAR2(100)	NULL,
	album_name	VARCHAR2(100)	NULL,
	release_date	VARCHAR2(10)	NULL,
	genre	VARCHAR2(30)	NULL,
	review_date	VARCHAR2(30)	NULL,
	reviewer	VARCHAR2(30)	NULL,
	rate	VARCHAR2(10)	NULL,
	summary	VARCHAR2(1000)	NULL,
	review	VARCHAR2(4000)	NULL,
	image_link	VARCHAR2(500)	NULL,
	origin_link	VARCHAR2(500)	NULL,
	newsletter_state	VARCHAR2(10)    DEFAULT 'N'	 NULL	
);

ALTER TABLE tblPitchfork ADD CONSTRAINT PK_TBLPITCHFORK PRIMARY KEY (
	seq_pitchfork
);


SET DEFINE OFF

INSERT INTO TBLPITCHFORK (SEQ_PITCHFORK, ARTIST, ALBUM_NAME, RELEASE_DATE, GENRE, REVIEW_DATE, REVIEWER, RATE, SUMMARY, REVIEW, IMAGE_LINK, ORIGIN_LINK, NEWSLETTER_STATE) 
VALUES (1, 'Herbie Hancock', 'Head Hunters', '1973', 'Pop/R&B', 'April 5, 2020', 'Jeremy D. Larson', '10', 'Each Sunday, Pitchfork takes an in-depth look at a significant album from the past, and any record not in our archives is eligible. Today, we revisit Herbie Hancock’s jazz-funk masterpiece, a celebration of all that is modern and ancient.', 'In 1973, Herbie Hancock, a virtuosic jazz dissident, stomped out an entire history of sound when he walked out a bassline on a modular synthesizer. This was not someone’s upright acoustic bass played with calloused fingers, it was preprogrammed on a circuit board obscured inside a small wooden box, amplified by some hidden electrical process. And it wasn’t one bassline crawling out of the speakers, it was two, dubbed on top of each other, split across the stereo field, blasphemed onto what was ostensibly a jazz recording in post-production.

For purists, it was just another heretical element on another album of heresy from yet another jazz pioneer turned iconoclast. The afterimages of Miles Davis’ blinding turn toward the electric music a few years earlier were still being processed by audiences, players, and critics alike. Hancock, having played keys for six years with Miles Davis’ Second Great Quintet, had his own gauntlet to throw. Inspired by the power he saw in James Brown and Sly & the Family Stone, Hancock wanted to quit wafting in the rarified air of acoustic and avant-garde jazz. “I was not trying to make a jazz record,” Hancock said later. He wanted to get low, down to the floor, through the earth. He wanted to make a pure funk record. Instead, he made Head Hunters.', 'https://media.pitchfork.com/photos/5e84ffabc2ed2400096ee289/1:1/w_450%2Cc_limit/Head%2520Hunters_Herbie%2520Hancock.jpg', 'https://pitchfork.com/reviews/albums/herbie-hancock-head-hunters/', 'N');

INSERT INTO TBLPITCHFORK (SEQ_PITCHFORK, ARTIST, ALBUM_NAME, RELEASE_DATE, GENRE, REVIEW_DATE, REVIEWER, RATE, SUMMARY, REVIEW, IMAGE_LINK, ORIGIN_LINK, NEWSLETTER_STATE) 
VALUES (2, 'AC/DC', 'Back in Black', '1980', 'Rock', 'June 16, 2019', 'Steve Kandell', '8.8', 'Each Sunday, Pitchfork takes an in-depth look at a significant album from the past, and any record not in our archives is eligible. Today, we revisit the classic rock staple from a band who rebounded from tragedy to record one of the biggest albums ever made.', 'For many bands, the sudden and horrific death of their lead singer at the peak of their popularity would be a career-ender. AC/DC took a few weeks to regroup and then recorded one of the biggest albums of all time.

Back in Black is claimed in equal measure by the jocks, the stoners, the nerds, the delinquents, and the teachers. Nashville studios used it to test their acoustics. The title track boasts nothing less than one of the most gloriously elemental riffs ever devised—the perfection of the form, the ne plus ultra of jock jams, destined to be clumsily chunked out for eternity by teens testing fuzz pedals in God’s own Guitar Center. It might not necessarily be AC/DC’s best—if their career can even be measured in units of particular albums rather than one long, loud, continuous mid-tempo guitar riff spanning five decades. But it is their most album—most accessible, most successful, most enduring, most emblematic, and, given its genesis, most unlikely.', 'https://media.pitchfork.com/photos/5ce580d1f2bde617d5aad496/1:1/w_450%2Cc_limit/ACDC_BackInBlack.jpg', 'https://pitchfork.com/reviews/albums/acdc-back-in-black/', 'N');

INSERT INTO TBLPITCHFORK (SEQ_PITCHFORK, ARTIST, ALBUM_NAME, RELEASE_DATE, GENRE, REVIEW_DATE, REVIEWER, RATE, SUMMARY, REVIEW, IMAGE_LINK, ORIGIN_LINK, NEWSLETTER_STATE) 
VALUES (3, 'American Football', 'American Football', '2014', 'Rock', 'May 21, 2014', 'Ian Cohen', '8.6', 'The deluxe reissue of American Football''s only LP benefits from unusually good timing: as self-identifying emo bands are making music that’s more mature, refined, and exploratory than anything that came before it, American Football is currently the most influential album in the genre.', '“Honestly I can’t remember all my teenage feelings and their meanings.” Any list of Great Moments in Emo Lyricism would be incomplete without this curious Mike Kinsella-sung line during “Honestly?”, the third track from American Football’s only album, released in 1999. But really...honestly? We are, after all, talking about a genre assumed to be in constant contact with the feelings of teendom—but the next line gives more context: “They seem too/ See-through/ To be true.” Rather than someone cutting themselves off from or invalidating their own teenage feelings, Kinsella’s just outside that time frame trying to figure out how the emotions and music that moved him during his formative years figure into his current life. That’s why, as self-identifying emo bands are making music that’s more mature, refined, and exploratory than anything that came before it, American Football is currently the most influential album in the genre.

This deluxe reissue of American Football benefits from unusually good timing—and unlike most solemnly revered anniversary sets, this isn’t a mobilization of fan dollars after countless inclusions in Best Of Decade lists, and it''s not a case of “You had to be there” nostalgia, either. The raw 4-track demos, generous liner notes (written by guitarist Steve Holmes), and candid photographs are meant to welcome the people who weren’t “there” back in 1999, a grouping that includes pretty much everybody at this point. Still, the album''s reach in 2014 is estimable: American Football recently sold out an entire weekend at Webster Hall in New York in the matter of minutes—each night they''ll play to a crowd ten times bigger than any they saw during their entire existence.', 'https://media.pitchfork.com/photos/5929a79dc0084474cd0c0c21/1:1/w_450%2Cc_limit/3a9d7a66.jpg', 'https://pitchfork.com/reviews/albums/19352-american-football-american-football/', 'N');

INSERT INTO TBLPITCHFORK (SEQ_PITCHFORK, ARTIST, ALBUM_NAME, RELEASE_DATE, GENRE, REVIEW_DATE, REVIEWER, RATE, SUMMARY, REVIEW, IMAGE_LINK, ORIGIN_LINK, NEWSLETTER_STATE) 
VALUES (4, 'Phoebe Bridgers', 'Punisher', '2020', 'Folk/Country', 'June 22, 2020', 'Sam Sodomsky', '8.7', 'On her marvelous second album, Phoebe Bridgers defines her songwriting: candid, multi-dimensional, slyly psychedelic, and full of heart. Her music has become a world unto itself.', 'Phoebe Bridgers is a master of collapse. The 25-year-old California native writes songs for those moments when things fall apart, when language fails, when you long for so much distance that you need a spaceship to reach it. From there, she is able to find a sense of purpose, or at least make a plan. “When I get back I’ll lay around/Then I’ll get up and lay back down,” goes a couplet in “I Know the End,” the closing track of her stunning new album Punisher. Across the song’s two halves, she tethers the anxiety of leaving home to a vivid depiction of an actual apocalypse: lightning crashes, fire rises, people scream. “Yeah, I guess the end is here,” she deadpans. Her delivery is light, insistent—the casual tone you use to convey passing thoughts to the closest person in the room.

While Punisher is only her second full-length collection as a solo artist, Bridgers has already established a distinct worldview. Her songs can be autobiographical—2017’s “Motion Sickness” bluntly described an emotionally abusive relationship with a since-spurned, one-time mentor—but her writing is too self-aware and wide-ranging to feel confessional. It can be sad, but she is also the first to call bullshit on letting one emotion consume her. It’s why she will infuse a track like this album’s “Moon Song,” an otherwise wistful ballad that takes place at a birthday party, with a banal detail (“It’s nautical themed”) or an outright dismissal of art born from tragedy. “We hate ‘Tears in Heaven,’” she sings of Eric Clapton’s autobiographical, once-inescapable ballad. Then she concedes, “But it’s sad that his baby died.”', 'https://media.pitchfork.com/photos/5ee923f47bb7acb328d5683d/1:1/w_450%2Cc_limit/Punisher%2520_Phoebe%2520Bridgers.jpg', 'https://pitchfork.com/reviews/albums/phoebe-bridgers-punisher/', 'N');

INSERT INTO TBLPITCHFORK (SEQ_PITCHFORK, ARTIST, ALBUM_NAME, RELEASE_DATE, GENRE, REVIEW_DATE, REVIEWER, RATE, SUMMARY, REVIEW, IMAGE_LINK, ORIGIN_LINK, NEWSLETTER_STATE) 
VALUES (5, 'Wolf Alice', 'Blue Weekend', '2021', 'Rock', 'June 17, 2021', 'Ian Cohen', '7.2', 'The UK band’s enormous third album is pristine and emotionally extravagant, the platonic ideal for contemporary big-tent rock music.', 'Not everyone has the energy, confidence, or money to be among the crowd at Glastonbury or Primavera, playing Tetris with the festival schedule, shuttling between three different stages trying to catch the best 10 minutes of every set. Wolf Alice’s extravagantly emotive third LP, Blue Weekend, is a safe substitute for the experience, not just for 2021 but for virtually any year between 2017’s Visions of a Life and now. Blue Weekend is fluent in both alt-rock and the domain of pop artists that are most likely to headline alt-rock festivals. They’re the platonic ideal for big-tent rock music in 2021: lead singer Ellie Rowsell gives 20-somethings the megaphone of a superhuman, working through vices, crises of confidence, and a pervasive misogyny that success has only worsened, upending UK lad-rock supremacy while staying firmly within its lineage.

Blue Weekend makes ample use of the big Wolf Alice jukebox. When the negative space is flooded with reverb, Wolf Alice flaunt the glitziest production values ever heard on a shoegaze album; turn the reverb down and they’re a more guitar-centered version of big-budget bedroom-pop. “Safe From Heartbreak (if i never fall in love)” is Wolf Alice’s entry into indie-adjacent, twang-free country-pop; strip away the floodlit harmonies that make Rowsell sound like a one-woman Staves and the 12-string overdubs and it’s an Elliott Smith song.', 'https://media.pitchfork.com/photos/6036a3ca97b2d90479ab21dd/1:1/w_450%2Cc_limit/Wolf-Alice-Blue-Weekend.jpg', 'https://pitchfork.com/reviews/albums/wolf-alice-blue-weekend/', 'N');

INSERT INTO TBLPITCHFORK (SEQ_PITCHFORK, ARTIST, ALBUM_NAME, RELEASE_DATE, GENRE, REVIEW_DATE, REVIEWER, RATE, SUMMARY, REVIEW, IMAGE_LINK, ORIGIN_LINK, NEWSLETTER_STATE) 
VALUES (6, 'The Smashing Pumpkins', 'Mellon Collie and the Infinite Sadness', '2012', 'Rock', 'December 5, 2012', 'Ian Cohen', '9.3', 'Mellon Collie and the Infinite Sadness was one of the most generous records of the 90s. Smashing Pumpkins took it upon themselves to make a record that only teenagers could love and for many it was the only one they needed. This mega-deluxe box set pads the original with an additional 64 tracks.', 'Billy Corgan hasn''t done a very good job speaking on his own behalf over the past decade, so let me feed him a line from the Greek philosopher Pittacus that would make a much better case for his legacy: "The measure of a man is what he does with power." In 1995, nearly every other band at Smashing Pumpkins'' level was in some way turning its back on its audience: Pearl Jam had started their principled retreat from the spotlight; U2 and R.E.M. were deep within their stagiest, most ironic phases and making their least satisfying music to date; Rivers Cuomo was well on his way towards making Pinkerton; Metallica discovered nail polish; and, of course, Kurt Cobain gave up on life itself. On a much smaller level, even Corgan''s eternal rival Steve Malkmus had just released Wowee Zowee, a record whose sloppy sprawl was taken by Rolling Stone as proof that "Pavement are simply afraid to succeed."

Given this mid-decade valley, it''s understandable that the 2xCD Mellon Collie and the Infinite Sadness would be sneered at as self-indulgent. The Smashing Pumpkins hadn''t made their appearance at Hullabalooza yet, so many were unaware the band had a sense of humor*.* Still, their reputation was played for laughs. But Mellon Collie and the Infinite Sadness turned out to be one of the most generous records of the decade. During a time when rock heroes were hard to come by, Smashing Pumpkins took it upon themselves to make a record that only teenagers could love and for many it was the only one they needed.', 'https://media.pitchfork.com/photos/5929c101c0084474cd0c328e/1:1/w_450%2Cc_limit/a1880c84.jpeg', 'https://pitchfork.com/reviews/albums/17389-mellon-collie-and-the-infinite-sadness/', 'N');

INSERT INTO TBLPITCHFORK (SEQ_PITCHFORK, ARTIST, ALBUM_NAME, RELEASE_DATE, GENRE, REVIEW_DATE, REVIEWER, RATE, SUMMARY, REVIEW, IMAGE_LINK, ORIGIN_LINK, NEWSLETTER_STATE) 
VALUES (7, 'Sufjan Stevens', 'Carrie & Lowell', '2015', 'Folk/Country', 'March 30, 2015', 'Brandon Stosuy', '9.3', 'Sufjan Stevens has always written personally, weaving his life story into larger narratives, but here his autobiography is front and center. Carrie & Lowell is a return to the stripped-back folk of Seven Swans, but with a decade''s worth of refinement and exploration packed into it.', 'Sufjan Stevens'' new album, Carrie & Lowell, is his best. This is a big claim, considering his career: 2003''s Michigan, 2004''s stripped-down Seven Swans, 2005''s Illinois, and 2010''s knotty electro-acoustic collection The Age of Adz. He''s also had residencies at the Brooklyn Academy of Music, collaborated with rappers and the National, donned wings and paint-splattered dayglo costumes, and released Christmas albums. But none of those side projects were ultimately ever as interesting, or effective, as when Sufjan was just Sufjan, a guy with a guitar or piano, well-detailed lyrics, and a gorgeous whisper that could reach into a heartbreaking falsetto.

Part of what makes Carrie & Lowell so great is that it comes after all of those things—the wings, the orchestras—but it feels like you''re hearing him for the first time again, and in his most intimate form. This record is a return to the sparse folk of Seven Swans, but with a decade''s worth of honing and exploration packed into it. It already feels like his most classic and pure effort.', 'https://media.pitchfork.com/photos/5929ac5c5e6ef959693218f8/1:1/w_450%2Cc_limit/dbfa1978.jpg', 'https://pitchfork.com/reviews/albums/20218-carrie-lowell/', 'N');

INSERT INTO TBLPITCHFORK (SEQ_PITCHFORK, ARTIST, ALBUM_NAME, RELEASE_DATE, GENRE, REVIEW_DATE, REVIEWER, RATE, SUMMARY, REVIEW, IMAGE_LINK, ORIGIN_LINK, NEWSLETTER_STATE) 
VALUES (8, 'The Go! Team', 'Get Up Sequences Part One', '2021', 'Rock', 'July 2, 2021', 'Marc Hogan', '6.8', 'Indie aesthetics have changed considerably in the past two decades, but the UK group is still throwing block parties for a utopia where time and genre collapse.', 'Midway through a podcast interview late last year, the Go! Team mastermind Ian Parton raised a tantalizing counterfactual. What if the groundswell around the collage-pop project’s brilliant debut album, 2004’s Thunder, Lightning, Strike, had been a bit less deafening? “It happened too quickly,” Parton said of the Go! Team’s initial flush of success. Noting that there will be a “a certain contingent” for whom the UK six-piece will always be associated with the era of mp3 blogs and Iraq War protests, he added, “I prefer to be a slow-burn band.”

Hell, I’ll admit it: It’s not easy for me to separate the Go! Team from fond memories of listening to their debut as a newbie critic for this website (thankfully, my Muppet-themed review wasn’t the one we ran), or from tales of neighborhood kids joining the band onstage during the 2005 incarnation of what is now Pitchfork Music Festival. But Parton may have belatedly gotten his wish, as the Go! Team’s next several solid-to-great albums generally received more muted praise, leaving room for listeners to find the group at their own pace. Whether crossing paths with Public Enemy or Best Coast, hunkering down as a solo act or getting the band back together, the Go! Team demonstrated a remarkably consistent vision. Their sixth album, Get Up Sequences Part One, completed as Parton was battling the debilitating auditory effects of Ménière’s disease, is another intermittently thrilling block party from a utopia where time and genre collapse.', 'https://media.pitchfork.com/photos/6052624417cb1de7bbdb7c36/1:1/w_450%2Cc_limit/The-Go-Team.jpg', 'https://pitchfork.com/reviews/albums/the-go-team-get-up-sequences-part-one/', 'N');

INSERT INTO TBLPITCHFORK (SEQ_PITCHFORK, ARTIST, ALBUM_NAME, RELEASE_DATE, GENRE, REVIEW_DATE, REVIEWER, RATE, SUMMARY, REVIEW, IMAGE_LINK, ORIGIN_LINK, NEWSLETTER_STATE) 
VALUES (9, 'Hiatus Kaiyote', 'Mood Valiant', '2021', 'Rock / Jazz', 'June 28, 2021', 'Adlan Jackson', '7.3', 'No longer content with merely capturing the sound of four wildly talented musicians in a room together, the Australian “future soul” group transforms on their vibrant and psychedelic third album.', 'The Australian quartet Hiatus Kaiyote are hyper-professional players, prone to the type of musical indulgences most appreciated by audiences of tuition-paying jazz performance majors. Luckily, they also have a knack for breezy neo-soul that is as inviting as it is impressive. At the center of their sound is guitarist and R&B vocalist Nai Palm, and the success of Hiatus Kaiyote songs depends on the way her bandmates accompany her singular, heroic voice. At their best, particularly on stage, they accentuate her melodies with propulsive, inventive rhythms. But in the studio, they have struggled to sound equally compelling. The performances on Nai Palm’s 2017 solo debut, Needle Paw, only underlined this issue. With her accompaniment stripped to just acoustic guitar and vocals, she sounded freer.

On Mood Valiant, Hiatus Kaiyote creeps closer to a unity of virtuosity and feeling. No longer content with merely capturing the sound of four wildly talented musicians in a room together, they transform into something more expansive and psychedelic. The fundamentals of their sound—like the twinkling Rhodes electric piano that shows up in the brief and tender “Sip Into Something Soft”—are still present. But the band soon ventures into new territory. On “Chivalry Is Not Dead,” keyboardist Simon Mavin juggles synths that creak and yawn. Bassist Paul Bender and drummer Perrin Moss are characteristically locked in, guiding us through kaleidoscopic sounds. In the hookier moments, Hiatus Kaiyote sound like songwriters and performers in equal measure, living up to their self-appointed genre of “future soul”: husky, cyberpunk R&B, with Nai Palm’s molten voice at its core.', 'https://media.pitchfork.com/photos/6050db23ef88baf05a8e2df5/1:1/w_450%2Cc_limit/Hiatus-Kaiyote-Mood-Valiant.jpeg', 'https://pitchfork.com/reviews/albums/hiatus-kaiyote-mood-valiant/', 'N');


commit;


-- ****************************
--    [뉴스레터 테이블 생성]
-- ****************************
CREATE TABLE tblNewsLetter (
	seq_newsletter	NUMBER	NOT NULL,
	seq_pitchfork	NUMBER	NOT NULL,
	write_date	VARCHAR2(20)    DEFAULT SYSDATE NULL,
	publish_date	VARCHAR2(20)	NULL,
	publish_state	VARCHAR2(10)	DEFAULT 'N' NULL,
	my_review	VARCHAR2(1000)	NULL,
	trans_comment	VARCHAR2(1000)	NULL,
	trans_review	VARCHAR2(4000)	NULL
);

ALTER TABLE tblNewsLetter ADD CONSTRAINT PK_TBLNEWSLETTER PRIMARY KEY (
	seq_newsletter
);

SET DEFINE OFF;
Insert into HR.TBLNEWSLETTER (SEQ_NEWSLETTER,SEQ_PITCHFORK,WRITE_DATE,PUBLISH_DATE,PUBLISH_STATE,MY_REVIEW,TRANS_COMMENT,TRANS_REVIEW) values (4,3,'2022-02-24',null,'N','American Football의 1999년도 앨범. EMO의 대표격인 앨범인데, 이게 EMO라면 나 EMO 좋아했네.. 박자가 특이해서 처음에 math rock인가 생각했는데, math rock 보다는 감성이 EMO 쪽입니다. 서정적인데 너무 차분하지만은 않고 틀어놓고 듣기 좋아요.','"아메리칸 풋볼의 유일한 LP 재발매는 유난히 좋은 타이밍에서 비롯된다: 자기 식별 이모 밴드가 이전의 어떤 것보다 더 성숙하고, 세련되고, 탐구적인 음악을 만들고 있기 때문에, 아메리칸 풋볼은 현재 이 장르에서 가장 영향력 있는 음반이다."','"솔직히 저는 제 십대들의 감정과 의미들을 모두 기억할 수 없습니다. 1999년에 발매된 아메리칸 풋볼의 유일한 앨범의 세 번째 트랙인 "Honestly?"의 이 호기심 많은 마이크 킨셀라성 대사 없이는 이모티콘의 위대한 순간들의 어떠한 목록도 불완전할 것이다. 하지만 정말...솔직히요? 우리는, 결국, 틴돔의 감정에 지속적으로 접촉하는 것으로 추정되는 장르에 대해 이야기하고 있지만, 다음 줄은 더 많은 맥락을 제공한다: "그것들은 너무 보이는 것 같아/ 시스루/ 진실이다. 킨셀라는 자신의 10대 감정에 대해 스스로 단절하거나 무효화시키기 보다는, 형성기에 자신을 움직였던 감정과 음악이 어떻게 그의 현재 삶에 영향을 미치는지 알아내려고 애쓰고 있다. 그것이 바로 자기 식별 이모 밴드가 그 이전에 나왔던 그 어떤 것보다 더 성숙하고, 세련되고, 탐구적인 음악을 만들고 있기 때문에, 아메리칸 풋볼이 현재 그 장르에서 가장 영향력 있는 앨범이다.

이 디럭스 풋볼의 재발행은 유난히 좋은 시기로부터 이익을 얻으며, 가장 엄숙하게 존경받는 기념일 세트와는 달리, 이것은 베스트 오브 디케이드 목록에 수없이 포함된 후 팬 달러의 동원이 아니며, 또한 "You There"의 향수의 경우도 아니다. 원곡 4트랙 데모, 넉넉한 라이너 노트(기타 연주자 스티브 홈즈가 작사), 솔직한 사진들은 1999년 당시 "그곳"에 없었던 사람들을 환영하기 위한 것이다. 그러나 2014년 앨범의 판매량은 예상할 수 있다. 아메리칸 풋볼은 최근 뉴욕의 웹스터 홀에서 열린 주말 내내 몇 분 만에 매진되었으며, 매일 밤 공연하는 관중 중 10배나 되는 관중 앞에서 경기를 펼치게 됩니다.');
Insert into HR.TBLNEWSLETTER (SEQ_NEWSLETTER,SEQ_PITCHFORK,WRITE_DATE,PUBLISH_DATE,PUBLISH_STATE,MY_REVIEW,TRANS_COMMENT,TRANS_REVIEW) values (5,7,'2022-02-24',null,'N','Sufjan Stevens 추천해서 안 좋아하는 사람 없었는데, 사실 수프쟌은 워낙 좋아서 그런지 추천해주기 전부터 유명하고 다들 많이 알고 있는 뮤지션. 모든 앨범을 들어본건 아니다만 이 앨범은 정말 명작 오브 명작.','"수프얀 스티븐스는 항상 개인적으로 자신의 인생 이야기를 더 큰 이야기로 엮으며 글을 써왔지만, 여기서는 그의 자서전이 가장 앞부분과 중심에 있다. 캐리 & 로웰은 옷을 벗은 세븐 스완즈(Seven Swans)로 돌아왔지만, 10년 동안 쌓아온 교양과 탐구가 그 안에 담겨 있다."','Sufjan Stevens의 새 앨범인 Carrie & Lowell은 그의 최고 앨범입니다. 2003년 미시건, 2004년 세븐 스완스, 2005년 일리노이, 2010년 에이지 오브 애즈 등 그의 경력을 고려할 때 이는 큰 주장이다. 그는 또한 브루클린 음악 아카데미에 거주했고, 래퍼와 내셔널과 협업했으며, 날개를 입고 페인트가 흩뿌려진 데이글로 의상을 입었으며, 크리스마스 앨범을 발매했다. 그러나 그 어떤 측면 프로젝트도 궁극적으로 Sufjan이 단지 기타나 피아노, 디테일한 가사, 가슴 아픈 가성에 도달할 수 있는 멋진 속삭임을 가진 남자였을 때만큼 흥미롭고 효과적이지 못했다.

Carrie & Lowell을 훌륭하게 만드는 이유 중 하나는 날개, 오케스트라 등 모든 것 다음에 있다는 것입니다. 그러나 당신은 그의 가장 친밀한 모습을 처음 듣는 것처럼 느껴집니다. 이 기록은 세븐 스완스의 희박한 사람들에게 돌아가는 것이지만, 10년 동안 갈고 닦고 탐구한 가치가 그 안에 가득 차 있다. 그것은 이미 그의 가장 고전적이고 순수한 노력처럼 느껴집니다.');
Insert into HR.TBLNEWSLETTER (SEQ_NEWSLETTER,SEQ_PITCHFORK,WRITE_DATE,PUBLISH_DATE,PUBLISH_STATE,MY_REVIEW,TRANS_COMMENT,TRANS_REVIEW) values (6,9,'2022-02-24',null,'N','호주의 퓨처 소울 밴드 Hiatus Kaiyote(하이에이터스 카이요테). 느낌은 재즈, R&B, 싸이키델릭. 이 밴드도 박자와 리듬감 정말 그루브 있다. R&B를 많이 듣는 편은 아니다만 이런 류의 음악 추천해달라고 하면 선발로 해줄거 같은 밴드 ! ','"더 이상 단순히 한 방에서 네 명의 재능 있는 뮤지션들의 소리를 담아내는 것에 만족하지 않고, 호주의 ''퓨처 소울'' 그룹은 그들의 활기차고 사이키델릭한 세 번째 앨범으로 변신한다."','호주 4인조 밴드 Viacus Kaiyote는 초프로 연주자로 등록금을 내는 재즈 퍼포먼스 전공자들이 가장 고마워하는 유형의 음악적 면죄부를 받기 쉽다. 운 좋게도, 그들은 또한 매력적이면서도 매력적인 경쾌한 네오소울에 대한 재주도 가지고 있다. 그들의 소리의 중심에는 기타리스트이자 R&B 보컬리스트인 나이 팜이 있고, Vinus Kaiyote 노래의 성공은 그녀의 밴드 동료들이 그녀의 단조롭고 영웅적인 목소리에 어떻게 반주하느냐에 달려 있다. 특히 무대 위에서는 박진감 넘치는 독창적인 리듬으로 그녀의 멜로디를 강조합니다. 하지만 스튜디오에서 그들은 똑같이 설득력 있는 소리를 내기 위해 고군분투했다. 2017년 Nai Palm의 솔로 데뷔 무대인 Needle Paw에서의 공연은 이 문제를 강조했을 뿐이다. 어쿠스틱 기타와 보컬로 반주를 벗은 그녀는 더 자유로워 보였다.

무드 발리안트에서는 히버스 카이요테가 기교와 느낌의 일치를 향해 조금씩 다가간다. 더 이상 단순히 한 방에서 네 명의 재능 있는 음악가의 소리를 함께 포착하는 것에 만족하지 않고, 그들은 더 방대하고 사이키델릭한 무언가로 변신한다. 짧고 부드러운 〈Sip Into Something Something〉에 나오는 반짝이는 로즈 일렉트릭 피아노처럼 그들의 소리의 기본은 여전히 존재한다. 그러나 그 밴드는 곧 새로운 영역으로 모험을 떠난다. ''기사도는 죽지 않는다''에서 키보디스트 사이먼 마빈은 삐걱거리고 하품을 하는 신디사이즈를 만들어낸다. 베이시스트 폴 벤더와 드러머 페린 모스는 만화경 사운드로 우리를 안내하는 특징이 있다. 공백기 카이요테는 나이 팜의 녹은 목소리를 핵심으로 하는 허스키하고 사이버펑크 R&B라는 자신들이 선택한 장르의 "미래의 소울"에 걸맞게 작곡가와 연주자처럼 들린다.');
Insert into HR.TBLNEWSLETTER (SEQ_NEWSLETTER,SEQ_PITCHFORK,WRITE_DATE,PUBLISH_DATE,PUBLISH_STATE,MY_REVIEW,TRANS_COMMENT,TRANS_REVIEW) values (1,5,'2022-02-24',null,'N','나의 2021년 스포티파이 Wrap 1위 앨범인 Wolf Alice <Blue Weekend>. 앨범의 첫번째 트랙부터 끝 트랙까지 완벽한 기승전결을 보여주는 앨범입니다. 혹 과거의 감성이 없어졌다고도 하지만 저는 화려한 사운드가 꽉 차 있어서 정말 좋아해요.
The Beach, Lipstick on the glass, Smile, How can I make it ok? 등 모든 트랙이 훌륭합니다 ! ','"이 영국 밴드의 거대한 세 번째 앨범은 순수하고 감정적으로 화려하며, 현대 빅텐트 록 음악에 이상적인 플라톤 음악이다."','모든 사람들이 글래스톤베리나 프리마베라에서 관객들과 함께 테트리스 경기를 하며 모든 세트장의 최고 10분을 잡기 위해 세 개의 다른 무대 사이를 오가며 놀 수 있는 에너지, 자신감, 돈을 가지고 있는 것은 아니다. 울프 앨리스의 사치스럽게 감성적인 세 번째 LP ''블루 위켄드''는 2021년뿐만 아니라 2017년 ''Visions of a Life''부터 현재까지의 거의 모든 해 동안 이 경험을 대신할 안전한 곡이다. 블루 위켄드는 알트록과 알트록 페스티벌의 헤드라인을 장식할 가능성이 가장 높은 팝 아티스트의 영역 모두에 능통하다. 리드 싱어 엘리 로셀은 20대에게 악덕과 자신감의 위기, 그리고 성공이 악화되기만 했을 뿐이라는 여성혐오가 만연한 20대에게 그 혈통 내에서 굳건히 남아 있는 영국 남자 록의 우월성을 밀어올리고 있다는 점에서 2021년 빅텐트 록 음악에 이상적인 플라톤이다.

블루 위켄드는 큰 울프 앨리스 주크박스를 충분히 활용한다. 울프 앨리스는 음의 공간이 울림으로 넘쳐나자 슈게이즈 앨범에서 들었던 것 중 가장 현란한 제작 가치를 과시한다. 울프 앨리스는 반향을 낮추면 기타 중심의 대형 베드팝 버전이 된다. 〈Safe From Heartbreak〉은 울프 앨리스가 인디인접, 트윙 프리 컨트리 팝에 입문한 곡으로, 로셀을 마치 한 명의 여성 스테이브와 12줄의 오버더빙처럼 들리게 하는 투광 조명 하모니를 벗겨내고 엘리엇 스미스 노래이다.');
Insert into HR.TBLNEWSLETTER (SEQ_NEWSLETTER,SEQ_PITCHFORK,WRITE_DATE,PUBLISH_DATE,PUBLISH_STATE,MY_REVIEW,TRANS_COMMENT,TRANS_REVIEW) values (2,6,'2022-02-24',null,'N','빌리 코건은 천재인가 생각했던 스매싱 펌킨즈 3집 <Mellon Collie and the Infinite Sadness>. 무려 28곡이 들어있는 더블 앨범이다. 스매싱 펌킨즈의 명곡들이 대거 포진 되어있는데 첫번째 CD인 Dawn to Dusk에 있는 Tonight, Tonight은 지금 들어도 벅차오른다.','"멜론 콜리와 무한 슬픔은 90년대 가장 관대한 음반 중 하나였다. 스매싱 펌킨스는 오직 십대들만이 사랑할 수 있는 음반을 만들기 위해 스스로 자초했다. 이 초대형 박스 세트는 추가 64트랙으로 원작을 장식한다."','빌리 코르간은 지난 10년 동안 자신을 대변하는 연설을 잘 하지 못했습니다. 그래서 그리스 철학자 피타쿠스의 말을 인용하자면, "사람의 척도는 그가 권력으로 하는 것이다." 1995년, 스매싱 펌킨스의 거의 모든 다른 밴드들은 어떤 식으로든 관객들을 외면하고 있었다: 펄 잼은 스포트라이트로부터 원칙적인 후퇴를 시작했다; U2와 R.E.M은 그들의 가장 극심하고 아이러니한 단계에 있었고, River Cuomo는 현재까지 가장 만족스럽지 못한 음악을 만들고 있었다.메탈리카는 매니큐어를 발견했고, 물론 커트 코베인은 생명 자체를 포기했다. 훨씬 더 작은 수준에서, 심지어 코건의 영원한 라이벌 스티브 말크머스도 와위 조위를 발매했는데, 그의 엉성한 스프롤은 롤링 스톤이 "포용은 단순히 성공하는 것을 두려워한다."

이 10년 중반의 계곡을 감안할 때, 2xCD 멜론 콜리와 무한 슬픔이 제멋대로라는 비웃음을 받을 만도 하다. 스매싱 펌킨스는 아직 헐라발루자에 모습을 드러내지 않았기 때문에 많은 사람들이 이 밴드가 유머 감각이 있다는 것을 알지 못했다. 하지만 멜론 콜리와 무한 슬픔은 10년 동안 가장 관대한 음반 중 하나로 밝혀졌다. 록 히어로들을 구하기 어려웠던 시절, 스매싱 펌킨스는 오직 10대들만이 사랑할 수 있는 음반을 만들기 위해 스스로 책임졌다.');
Insert into HR.TBLNEWSLETTER (SEQ_NEWSLETTER,SEQ_PITCHFORK,WRITE_DATE,PUBLISH_DATE,PUBLISH_STATE,MY_REVIEW,TRANS_COMMENT,TRANS_REVIEW) values (3,8,'2022-02-24',null,'N','영국의 인디록 밴드 The Go! Team의 6집. 인디록, 올드스쿨 힙합, 키치 사운드 등 다양한 사운드를 내는 밴드인데 이런 사운드 좋아하는 사람이라면 정말 좋아할껄요. Let the seasons work, We do it but never know why, World remember me now 추천 ! ','"지난 20년간 인디 미학은 상당히 변화했지만, 영국 그룹은 여전히 시간과 장르가 무너지는 유토피아를 위해 블록파티를 열고 있다."','작년 말 팟캐스트 인터뷰 중간, 더 고! 팀의 거장 이안 파튼이 감질나는 반실패를 제기했다. 콜라주 팝 프로젝트의 화려한 데뷔 앨범인 2004년의 Thunder, Lightening, Strike 주변의 그라운드 우물이 조금 덜 귀청이 터졌더라면 어땠을까? "그 일은 너무 빨리 일어났습니다,"라고 파톤은 바둑에 대해 말했다. 팀의 초기 성공 물결. 그는 "영국의 식스피스가 항상 mp3 블로그나 이라크전 시위와 연관되는 확실한 대표단이 있을 것"이라고 언급하며 "나는 슬로우 버닝 밴드가 되는 것을 선호한다"고 덧붙였다.

젠장, 인정할게 바둑을 분리하는 건 내게 쉽지 않아! 이 웹사이트의 신인 평론가로 데뷔했던 좋은 추억의 팀(다행히도 머펫을 주제로 한 리뷰는 우리가 운영한 것이 아니었다)이나, 2005년 현재 피치포크 뮤직 페스티벌의 화신 중 이웃 아이들이 이 밴드에 합류한 이야기에서 나온 팀이다. 하지만 파튼이 뒤늦게 ''고''라는 그의 소원을 들어줬을지도 모른다! 팀의 다음 몇몇 솔리드 투 그레이트 음반들은 일반적으로 더 조용한 찬사를 받았고, 청취자들이 그들만의 속도로 그룹을 찾을 수 있는 여지를 남겼다. Public Enemy와 Best Coast를 넘나들든, 솔로로서 주저앉든, 밴드를 다시 뭉치든, Go! 팀은 놀라울 정도로 일관된 비전을 보여주었습니다. 파톤이 메니에르병의 쇠약해진 청각 효과와 싸우고 있을 때 완성된 6집 앨범 "Get Up Sequences Part One"은 시간과 장르가 무너지는 유토피아에서 나온 또 다른 짜릿한 블록 파티이다.');

commit;


-- ****************************
--    [뉴스레터 포스트 뷰 생성]
-- ****************************
create or replace view vwPost
as
select 
    news.seq_newsletter as seq_newsletter,
    news.seq_pitchfork as seq_pitchfork,
    news.write_date as write_date,
    news.publish_date as publish_date,
    news.publish_state as publish_state,
    news.my_review as my_review,
    news.trans_comment as trans_comment,
    news.trans_review as trans_review,
    pitch.artist as artist,
    pitch.album_name as album_name,
    pitch.release_date as release_date,
    pitch.genre as genre,
    pitch.review_date as review_date,
    pitch.reviewer as reviewer,
    pitch.rate as rate,
    pitch.summary as summary,
    pitch.image_link as image_link,
    pitch.origin_link as origin_link,
    pitch.newsletter_state as newsletter_state
from tblnewsletter news
    inner join tblpitchfork pitch on news.seq_pitchfork = pitch.seq_pitchfork;


