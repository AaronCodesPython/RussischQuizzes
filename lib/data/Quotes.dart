import 'package:russian_quiz_app/widgets/main_options.dart';

final List<List<String>> options = [
  ["Vokabeln", "Vocab", ""],
  ["Quizzes", "Quiz", ""],
  ["Media", "Media", ""],
];

Map<String, String> quotesDictionary = {
  "They say: sufferings are misfortunes, said Pierre. But if at once this minute, I was asked, would I remain what I was before I was taken prisoner, or go through it all again, I should say, for God's sake let me rather be a prisoner and eat horseflesh again. We imagine that as soon as we are torn out of our habitual path all is over, but it is only the beginning of something new and good. As long as there is life, there is happiness. There is a great deal, a great deal before us. -Leo Tolstoy, War and Peace":
      "Говорят: страдания — это несчастья, — сказал Пьер. Но если бы сейчас, в эту минуту, меня спросили, останусь ли я тем, чем был до пленения, или пройду через все это снова, я бы сказал, ради бога, пусть лучше я буду пленником и снова буду есть конину. Мы представляем себе, что как только нас вырвут с привычного пути, все закончится, но это только начало чего-то нового и хорошего. Пока есть жизнь, есть счастье. Нам предстоит многое, очень многое. — Лев Толстой, «Война и мир».",
  "A man on a thousand mile walk has to forget his goal and say to himself every morning, 'Today I'm going to cover twenty-five miles and then rest up and sleep. -Leo Tolstoy, War and Peace":
      "Человеку, идущему на тысячу миль, приходится забывать о своей цели и каждое утро говорить себе: «Сегодня я пройду двадцать пять миль, а потом отдохну и усну». — Лев Толстой, «Война и мир».",
  "Human science fragments everything in order to understand it, kills everything in order to examine it. -Leo Tolstoy, War and Peace":
      "Гуманитарная наука все фрагментирует, чтобы понять, убивает все, чтобы исследовать. — Лев Толстой, «Война и мир».",
  "Everything intelligent is so boring. -Leo Tolstoy, Anna Karenina":
      "Все разумное так скучно. -Лев Толстой, Анна Каренина.",
  "She had no need to ask why he had come. She knew as certainly as if he had told her that he was here to be where she was. -Leo Tolstoy, Anna Karenina, Vol 1 of 8":
      "Ей не нужно было спрашивать, зачем он пришел. Она знала это так же уверенно, как если бы он сказал ей, что он здесь для того, чтобы быть там, где она. -Лев Толстой, Анна Каренина, Том 1 из 8",
  "I sit on a man's back choking him and making him carry me, and yet assure myself and others that I am sorry for him and wish to lighten his load by all means possible… except by getting off his back. -Leo Tolstoy, What Then Must We Do?":
      "Я сижу на спине человека, душию его и заставляю нести меня, и все же уверяю себя и других, что мне жаль его и желаю облегчить его ношу всеми возможными способами... кроме как слезть с его спины. -Лев Толстой, Что же нам делать?",
  "He stepped down, avoiding any long look at her as one avoids long looks at the sun, but seeing her as one sees the sun, without looking. -Leo Tolstoy, Anna Karenina":
      "Он сошел, избегая долгих взглядов на нее, как избегают долгих взглядов на солнце, но глядя на нее так, как видят солнце, не глядя. -Лев Толстой, Анна Каренина.",
  "There are no conditions to which a person cannot grow accustomed, especially if he sees that everyone around him lives in the same way. -Leo Tolstoy, Anna Karenina":
      "Нет условий, к которым человек не мог бы привыкнуть, особенно если он видит, что все вокруг него живут так же. -Лев Толстой, Анна Каренина.",
  "It's all God's will: you can die in your sleep, and God can spare you in battle. -Leo Tolstoy, War and Peace":
      "На все воля Божья: ты можешь умереть во сне, и Бог может пощадить тебя в бою. — Лев Толстой, «Война и мир».",
  "Here's my advice to you: don't marry until you can tell yourself that you've done all you could, and until you've stopped loving the women you've chosen, until you see her clearly, otherwise you'll be cruelly and irremediably mistaken. Marry when you're old and good for nothing...Otherwise all that's good and lofty in you will be lost. -Leo Tolstoy, War and Peace":
      "Вот мой тебе совет: не женись, пока не скажешь себе, что ты сделал все, что мог, и пока ты не разлюбишь женщин, которых ты выбрал, пока ты не увидишь ее ясно, иначе ты будешь жесток и непоправимо ошибается. Женись, когда ты состаришься и ни на что не годишься... Иначе все хорошее и высокое в тебе пропадет. — Лев Толстой, «Война и мир».",
  "The only absolute knowledge attainable by man is that life is meaningless. -Leo Tolstoy, A Confession":
      "Единственное абсолютное знание, достижимое человеком, состоит в том, что жизнь бессмысленна. -Лев Толстой, «Исповедь».",
  "Everyone thinks of changing the world, but no one thinks of changing himself. -Leo Tolstoy":
      "Каждый думает изменить мир, но никто не думает изменить себя. -Лев Толстой",
  "All happy families are alike; each unhappy family is unhappy in its own way. -Leo Tolstoy, Anna Karenina":
      "Все счастливые семьи похожи друг на друга; каждая несчастливая семья несчастлива по-своему. -Лев Толстой, Анна Каренина.",
  "If you look for perfection, you'll never be content. -Leo Tolstoy, Anna Karenina":
      "Если вы ищете совершенства, вы никогда не будете довольны. -Лев Толстой, Анна Каренина.",
  "I think... if it is true that there are as many minds as there are heads, then there are as many kinds of love as there are hearts. -Leo Tolstoy, Anna Karenina":
      "Я думаю... если правда, что умов столько же, сколько голов, то и видов любви столько же, сколько и сердец. -Лев Толстой, Анна Каренина.",
  "It is amazing how complete is the delusion that beauty is goodness. -Leo Tolstoy, The Kreutzer Sonata":
      "Он сошел вниз, стараясь подолгу не смотреть на нее, как будто она была солнцем, но видел ее, как солнце, даже не глядя. -Лев Толстой, Анна Каренина.",
  "He stepped down, trying not to look long at her, as if she were the sun, yet he saw her, like the sun, even without looking. -Leo Tolstoy, Anna Karenina":
      "Он сошел, избегая долгих взглядов на нее, как избегают долгих взглядов на солнце, но глядя на нее так, как видят солнце, не глядя. -Лев Толстой, Анна Каренина.",
  "Respect was invented to cover the empty place where love should be. -Leo Tolstoy, Anna Karenina":
      "Уважение было придумано, чтобы закрыть пустое место, где должна быть любовь. -Лев Толстой, Анна Каренина.",
  "We can know only that we know nothing. And that is the highest degree of human wisdom. -Leo Tolstoy, War and Peace":
      "Мы можем знать только то, что мы ничего не знаем. И это высшая степень человеческой мудрости. — Лев Толстой, «Война и мир».",
  "Only people who are capable of loving strongly can also suffer great sorrow, but this same necessity of loving serves to counteract their grief and heals them. -Leo Tolstoy":
      "Только люди, способные сильно любить, могут переносить и великое горе, но эта же необходимость любить служит противодействию их горю и исцеляет их. -Лев Толстой",
  "Guten Morgen!": "Доброе утро!",
  "Guten Tag / Abend!": "Добрый день / вечер!",
  "Hallo!": "Здравствуйте!",
  "Hi!": "Привет!",
  "Wie geht's?": "Как дела?",
  "Mir geht es gut! Danke!": "Хорошо! Спасибо!",
  "Bitte / Gern geschehen!": "Пожалуйста!",
  "Keine Ursache!": "Не за что!",
  "Auf Wiedersehen!": "До свидания!",
  "Tschüss!": "Пока!",
  "Bis später!": "Увидимся!",
  "Einen schönen Tag noch!": "Хорошего дня!",
  "Entschuldigung!": "Простите / извините!",
  "Kein Problem!": "Ничего страшного!",
  "Wie heißen Sie?": "Как вас зовут?",
  "Freut mich, Sie kennenzulernen.": "Приятно познакомиться.",
  "Ich heiße …": "Меня зовут …",
  "Woher kommen Sie?": "Откуда вы?",
  "Sprechen Sie …?": "Вы говорите по-…?",
  "Sprechen Sie bitte langsamer!": "Говорите медленнее, пожалуйста!",
  "Ich verstehe nicht. Können Sie das bitte wiederholen!":
      "Не понимаю. Повторите, пожалуйста!",
  "Bitte schreiben Sie das!": "Пожалуйста, напишите это!",
  "Helfen Sie mir bitte!": "Помогите, пожалуйста!",
  "There is no greatness where there is not simplicity, goodness, and truth. -Leo Tolstoy, War and Peace":
      "Нет величия там, где нет простоты, добра и истины. — Лев Толстой, «Война и мир».",
  "I always loved you, and if one loves anyone, one loves the whole person, just as they are and not as one would like them to be. -Dolly, Leo Tolstoy, Anna Karenina":
      "Я всегда любил тебя, а если кто-то любит, то любит всего человека, таким, какой он есть, а не таким, каким хотелось бы, чтобы он был. -Долли, Лев Толстой, Анна Каренина.",
  "Love is life. All, everything that I understand, I understand only because I love. Everything is, everything exists, only because I love. Everything is united by it alone. Love is God, and to die means that I, a particle of love, shall return to the general and eternal source. -Leo Tolstoy":
      "Любовь - это жизнь. Все, все, что я понимаю, я понимаю только потому, что люблю. Все есть, все существует, только потому, что я люблю. Все объединено ею одной. Любовь - это Бог, и умереть - значит, что я, частица любви, вернётся к общему и вечному источнику. — Лев Толстой",
  "All great literature is one of two stories; a man goes on a journey or a stranger comes to town. -Leo Tolstoy":
      "«Вся великая литература — это одна из двух историй: человек отправляется в путешествие или в город приезжает незнакомец. — Лев Толстой»",
  "Muhammad has always been standing higher than the Christianity. He does not consider god as a human being and never makes himself equal to God. Muslims worship nothing except God and Muhammad is his Messenger. There is no any mystery and secret in it. -Leo Tolstoy":
      "Мухаммед всегда стоял выше христианства. Он не считает бога человеком и никогда не ставит себя равным Богу. Мусульмане не поклоняются ничему, кроме Бога, и Мухаммед — его Посланник. Никакой тайны и тайны в нем нет. -Лев Толстой",
  "Sometimes she did not know what she feared, what she desired: whether she feared or desired what had been or what would be, and precisely what she desired, she did not know. -Leo Tolstoy, Anna Karenina":
      "Иногда она не знала, чего она боялась, чего желала: боялась ли она или желала того, что было, или того, что будет, и чего именно она желала, она не знала. -Лев Толстой, Анна Каренина».",
  "All the girls in the world were divided into two classes: one class included all the girls in the world except her, and they had all the usual human feelings and were very ordinary girls; while the other class -herself alone- had no weaknesses and was superior to all humanity. -Tolstoy, Anna Karenina":
      "Все девушки на свете были разделены на два класса: в один класс вошли все девушки на свете, кроме нее, и они обладали всеми обычными человеческими чувствами и были самыми обыкновенными девушками; в то время как другой класс - сам по себе - не имел слабостей и превосходил все человечество. -Толстой, Анна Каренина.",
  "It's much better to do good in a way that no one knows anything about it. -Leo Tolstoy, Anna Karenina":
      "Гораздо лучше делать добро так, чтобы об этом никто ничего не знал. -Лев Толстой, Анна Каренина.",
  "If you love me as you say you do,' she whispered, 'make it so that I am at peace. -Leo Tolstoy, Anna Karenina":
      "Если ты любишь меня так, как говоришь, — прошептала она, — сделай так, чтобы я была спокойна. -Лев Толстой, Анна Каренина.",
  "The whole world is divided for me into two parts: one is she, and there is all happiness, hope, light; the other is where she is not, and there is dejection and darkness... -Leo Tolstoy, War and Peace":
      "Весь мир разделен для меня на две части: одна — она, и там все счастье, надежда, свет; другая там, где ее нет, и там уныние и мрак... - Лев Толстой, Война и мир",
  "Pierre was right when he said that one must believe in the possibility of happiness in order to be happy, and I now believe in it. Let the dead bury the dead, but while I'm alive, I must live and be happy. -Leo Tolstoy, War and Peace":
      "Пьер был прав, когда говорил, что нужно верить в возможность счастья, чтобы быть счастливым, и я теперь верю в это. Пусть мертвые хоронят мертвецов, но пока я жив, я должен жить и быть счастливым. — Лев Толстой, «Война и мир».",
  "The best stories don't come from 'good vs. bad' but 'good vs. good.' -Leo Tolstoy":
      "Лучшие истории рождаются не из «хорошего против плохого», а из «хорошего против хорошего». -Лев Толстой",
  "Happiness does not depend on outward things, but on the way we see them. -Leo Tolstoy":
      "Счастье зависит не от внешних вещей, а от того, как мы их видим. -Лев Толстой",
  "They've got no idea what happiness is, they don't know that without this love there is no happiness or unhappiness for us--there is no life. -Leo Tolstoy, Anna Karenina":
      "Они понятия не имеют, что такое счастье, они не знают, что без этой любви для нас нет ни счастья, ни несчастья, нет жизни. -Лев Толстой, Анна Каренина.",
  "It's not given to people to judge what's right or wrong. People have eternally been mistaken and will be mistaken, and in nothing more than in what they consider right and wrong. -Leo Tolstoy, War and Peace":
      "Не дано людям судить, что правильно, а что нет. Люди вечно ошибались и будут ошибаться, и только в том, что они считают правильным и неправильным. — Лев Толстой, «Война и мир».",
  "You can love a person dear to you with a human love, but an enemy can only be loved with divine love. -Leo Tolstoy, War and Peace":
      "Любить дорогого тебе человека можно человеческой любовью, а врага можно любить только божественной любовью. — Лев Толстой, «Война и мир».",
  "But I'm glad you'll see me as I am. Above all, I wouldn't want people to think that I want to prove anything. I don't want to prove anything, I just want to live; to cause no evil to anyone but myself. I have that right, haven't I? -Leo Tolstoy, Anna Karenina":
      "Но я рад, что ты увидишь меня таким, какой я есть. Прежде всего, я бы не хотел, чтобы люди думали, что я хочу что-то доказать. Я не хочу ничего доказывать, я просто хочу жить; не причинять зла никому, кроме себя. Я прав, не так ли? -Лев Толстой, Анна Каренина.",
  "If we admit that human life can be ruled by reason, then all possibility of life is destroyed. -leo tolstoy, War and Peace":
      "Если мы признаем, что человеческой жизнью может управлять разум, то всякая возможность жизни будет уничтожена. — Лев Толстой, «Война и мир».",
  "But the law of loving others could not be discovered by reason, because it is unreasonable. -Leo Tolstoy, Anna Karenina":
      "Но закон любви к другим не мог быть открыт разумом, потому что он неразумен. -Лев Толстой, Анна Каренина.",
  "He soon felt that the fulfillment of his desires gave him only one grain of the mountain of happiness he had expected. This fulfillment showed him the eternal error men make in imagining that their happiness depends on the realization of their desires. -Leo Tolstoy, Anna Karenina":
      "Вскоре он почувствовал, что исполнение его желаний дало ему лишь одну крупицу от той горы счастья, которую он ожидал. Это достижение показало ему вечную ошибку людей, воображающих, что их счастье зависит от реализации их желаний. -Лев Толстой, Анна Каренина.",
  "It's hard to love a woman and do anything. -Leo Tolstoy, Anna Karenina":
      "Трудно любить женщину и делать что-либо. -Лев Толстой, Анна Каренина.",
  "True life is lived when tiny changes occur. -Leo Tolstoy":
      "Настоящая жизнь проживается тогда, когда происходят крошечные изменения. -Лев Толстой",
  "We are asleep until we fall in Love! -Leo Tolstoy, War and Peace":
      "Мы спим, пока не влюбимся! — Лев Толстой, «Война и мир».",
  "Seize the moments of happiness, love and be loved! That is the only reality in the world, all else is folly. It is the one thing we are interested in here. -Leo Tolstoy, War and Peace":
      "Ловите моменты счастья, любите и будьте любимы! Это единственная реальность в мире, все остальное — глупость. Это единственное, что нас здесь интересует. — Лев Толстой, «Война и мир».",
  "What counts in making a happy marriage is not so much how compatible you are but how you deal with incompatibility. -Leo Tolstoy":
      "Для счастливого брака важно не столько то, насколько вы совместимы, сколько то, как вы справляетесь с несовместимостью. -Лев Толстой",
  "He felt now that he was not simply close to her, but that he did not know where he ended and she began. -Leo Tolstoy":
      "Он чувствовал теперь, что он не просто близок к ней, но что он не знает, где он кончается и начинается она. -Лев Толстой",
  "I often think that men don't understand what is noble and what is ignorant, though they always talk about it. -Leo Tolstoy, Anna Karenina":
      "Мне часто кажется, что мужчины не понимают, что благородно, а что невежественно, хотя они всегда об этом говорят. -Лев Толстой, Анна Каренина.",
  "I simply want to live; to cause no evil to anyone but myself. -Leo Tolstoy, War and Peace":
      "Я просто хочу жить; не причинять зла никому, кроме себя. — Лев Толстой, «Война и мир».",
  "Everything I know, I know because of love. -Leo Tolstoy, War and Peace":
      "Все, что я знаю, я знаю благодаря любви. — Лев Толстой, «Война и мир».",
  "Love those you hate you. -Leo Tolstoy, Anna Karenina":
      "Любите тех, кого ненавидите. -Лев Толстой, Анна Каренина.",
  "Something magical has happened to me: like a dream when one feels frightened and creepy, and suddenly wakes up to the knowledge that no such terrors exist. I have wakened up. -Leo Tolstoy, Anna Karenina":
      "Со мной произошло что-то волшебное: как сон, когда человек чувствует себя напуганным и жутким и внезапно просыпается с осознанием того, что таких ужасов не существует. Я проснулся. -Лев Толстой, Анна Каренина.",
  "Not one word, not one gesture of yours shall I, could I, ever forget... -Leo Tolstoy, Anna Karenina":
      "Ни одного слова, ни одного твоего жеста я не забуду, не смогу когда-нибудь забыть... - Лев Толстой, Анна Каренина",
  "He was afraid of defiling the love which filled his soul. -Leo Tolstoy, Anna Karenina":
      "Он боялся осквернить любовь, наполнившую его душу. -Лев Толстой, Анна Каренина.",
  "A man is like a fraction whose numerator is what he is and whose denominator is what he thinks of himself. The larger the denominator, the smaller the fraction. -Leo Tolstoy":
      "Человек подобен дроби, числителем которой является то, чем он является, а знаменателем — то, что он думает о себе. Чем больше знаменатель, тем меньше дробь. -Лев Толстой",
  "Yes, love, ...but not the love that loves for something, to gain something, or because of something, but that love that I felt for the first time, when dying, I saw my enemy and yet loved him. I knew that feeling of love which is the essence of the soul, for which no object is needed. And I know that blissful feeling now too. To love one's neighbours; to love one's enemies. To love everything - to Love God in all His manifestations. Some one dear to one can be loved with human love; but an enemy can only be loved with divine love. And that was why I felt such joy when I felt that I loved that man. What happened to him? Is he alive? ...Loving with human love, one may pass from love to hatred; but divine love cannot change. Nothing, not even death, can shatter it. It is the very nature of the soul. And how many people I have hated in my life. And of all people none I have loved and hated more than her.... If it were only possible for me to see her once more... once, looking into those eyes to say... -Leo Tolstoy, War and Peace":
      "Да, любовь... но не та любовь, которая любит за что-нибудь, для чего-нибудь или ради чего-нибудь, а та любовь, которую я почувствовал в первый раз, когда, умирая, увидел своего врага и все же полюбил его. Я знал то чувство любви, которое составляет сущность души, для которой не нужен никакой предмет. И теперь я тоже знаю это блаженное чувство. Любить ближних; любить своих врагов. Любить всё – Любить Бога во всех Его проявлениях. Близкого человека можно любить человеческой любовью; но врага можно любить только божественной любовью. И именно поэтому я испытал такую радость, когда почувствовал, что люблю этого человека. Что с ним произошло? Он жив? ...Любя человеческой любовью, можно перейти от любви к ненависти; но божественная любовь не может измениться. Ничто, даже смерть, не может разрушить его. Это сама природа души. И сколько людей я ненавидел в своей жизни. И из всех людей никого я не любил и не ненавидел больше, чем ее... Если бы можно было еще раз увидеть ее... однажды, глядя в эти глаза, сказать... - Лев Толстой, Война и мир",
  "Because of the self-confidence with which he had spoken, no one could tell whether what he said was very clever or very stupid. -Leo Tolstoy, Война и мир":
      "Из-за самоуверенности, с которой он говорил, никто не мог сказать, было ли то, что он сказал, очень умным или очень глупым. -Лев Толстой, Война и мир",
  "I wanted movement and not a calm course of existence. I wanted excitement and danger and the chance to sacrifice myself for my love. -Leo Tolstoy":
      "Мне хотелось движения, а не спокойного течения существования. Я хотел азарта, опасности и возможности пожертвовать собой ради своей любви. -Лев Толстой",
  "All the diversity, all the charm, and all the beauty of life are made up of light and shade. -Leo Tolstoy, Anna Karenina":
      "Все многообразие, все очарование и вся красота жизни состоят из света и тени. -Лев Толстой, Анна Каренина.",
  "Whatever our fate is or may be, we have made it and do not complain of it. - Vronksy, Anna Karenina, Leo Tolstoy":
      "Какова бы ни была наша судьба, мы ее сделали и не жалуемся на нее. - Вронский, Анна Каренина, Лев Толстой.",
  "Man cannot possess anything as long as he fears death. But to him who does not fear it, everything belongs. If there was no suffering, man would not know his limits, would not know himself. -Leo Tolstoy, War and Peace":
      "Человек не может ничем обладать, пока он боится смерти. Но тому, кто этого не боится, принадлежит все. Если бы не было страдания, человек не знал бы своих границ, не знал бы самого себя. — Лев Толстой, «Война и мир».",
  "Every lie is a poison; there are no harmless lies. Only the truth is safe. Only the truth gives me consolation - it is the one unbreakable diamond. -Leo Tolstoy":
      "Всякая ложь — яд; не бывает безобидной лжи. Только правда безопасна. Только истина меня утешает – это тот самый нерушимый алмаз. -Лев Толстой",
  "To get rid of an enemy one must love him. -Leo Tolstoy":
      "Чтобы избавиться от врага, надо его любить. -Лев Толстой",
  "I'm like a starving man who has been given food. Maybe he's cold, and his clothes are torn, and he's ashamed, but he's not unhappy. -Leo Tolstoy, Anna Karenina":
      "Я как голодающий, которого накормили. Может быть, ему холодно, и одежда его разорвана, и ему стыдно, но он не несчастен. -Лев Толстой, Анна Каренина.",
  "What a strange illusion it is to suppose that beauty is goodness. -Leo Tolstoy, Anna Karenina":
      "Какая странная иллюзия — полагать, что красота — это добро. -Лев Толстой, Анна Каренина.",
  "He looked at her as a man might look at a faded flower he had plucked, in which it was difficult for him to trace the beauty that had made him pick and so destroy it. -Leo Tolstoy, Anna Karenina":
      "Он смотрел на нее, как человек смотрит на сорванный им увядший цветок, в котором ему трудно было уловить красоту, заставившую его сорвать и тем самым уничтожить его. -Лев Толстой, Анна Каренина.",
  "Can it be that I have not lived as one ought? suddenly came into his head. But how not so, when I've done everything as it should be done? -Leo Tolstoy, The Death of Ivan Ilych":
      "Неужели я жил не так, как должно? внезапно пришло ему в голову. А как не так, когда я все сделал так, как надо? -Лев Толстой, Смерть Ивана Ильича.",
  "اننا نبحث عن السعادة غالباً وهي قريبة منّا، كما نبحث في كثير من الأحيان عن النظارة وهي فوق عيوننا. -ليو تولستوي":
      "«Мы часто ищем счастья, когда оно близко к нам, так же, как мы часто ищем очки, когда они надвинуты на глаза» — Лев Толстой.",
  "How can one be well...when one suffers morally? -Leo Tolstoy, War and Peace":
      "Как можно быть здоровым... если человек страдает морально? — Лев Толстой, «Война и мир».",
  "Every heart has its own skeletons. -Leo Tolstoy, Anna Karenina":
      "У каждого сердца есть свои скелеты. -Лев Толстой, Анна Каренина.",

  // ... continue with the rest of the quotes
  // ... continue with the rest of the quotes
  // ... continue with the rest of the quotes
};
