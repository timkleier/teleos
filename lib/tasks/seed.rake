desc 'seed the database'

namespace :db do
  task :seed => :environment do
    # Content Types
    audio = ContentType.create(name: 'Audio')
    video = ContentType.create(name: 'Video')
    text = ContentType.create(name: 'Text')

    # 4.0 Adolescence
    puts "Creating 4.0 Adolescence Content Items"
    ContentItem.create(
      title: 'Interview with Stacey Sumereau',
      description: "Roy welcomes former professional Broadway actress, Stacey Sumerau. Stacey shares her experiences as a teen struggling to be the smartest, prettiest, and most talented performer she could be, how that struggle led to an eating disorder and ultimately, a spiritual transformation that informs her current work as a speaker who inspires teens to give their lives over to God's plan. Visit Stacey's official website for more on her speaking and experiences as a member of the Lifetime TV series, Sisterhood: Becoming Nuns. Roy has established Today's Teenager as a non-profit organization dedicated to covering the expenses of therapy sessions and other mental health services for teens and families that would otherwise be unable to afford them. Visit todaysteenager dot com for more information. Dr. Dore and her staff embrace their orthodontic patients like family. In addition to traditional metal and ceramic braces Dr. Dore enjoys using Invisalign clear aligners, and she is an Invisalign 'Preferred Provider.' Call her today for a free exam and Live Life Smiling at (337) 267-SMILE, or click here to learn more about Dr. Dore and her practice.",
      content_sources: [
        ContentSource.create(
          url: 'https://podcasts.apple.com/us/podcast/104-interview-with-stacey-sumereau/id1118889657?i=1000451962042',
          content_type: audio
        ),
        ContentSource.create(
          url: 'https://www.stitcher.com/podcast/roy-petitfils-2/todays-teenager',
          content_type: audio
        )
      ]
    )

    ContentItem.create(
      title: 'Dr. Michael Reichert Talks Raising Healthy Boys',
      content_sources: [
        ContentSource.create(
          url: 'https://podcasts.apple.com/us/podcast/103-dr-michael-reichert-talks-raising-healthy-boys/id1118889657?i=1000446380060',
          content_type: audio
        )
      ]
    )

    ContentItem.create(
      title: 'The Teen Years Explained: A Guide to Healthy Adolescent Development',
      description: 'We idealize childhood and demonize adolescence, often viewing the typical teenager as a bundle of problems. Yet according to a new book, The Teen Years Explained: A Guide to Healthy Adolescent Development, by Clea McNeely, MPH, DrPH and Jayne Blanchard, adolescence can be a time of opportunity, not turmoil. By understanding the developmental stages and changes of adolescence, both teens and adults can get the most out of this second decade of life.  In plain English, this guide incorporates the latest scientific findings about physical, emotional, cognitive, identity formation, sexual and spiritual development with tips and strategies on how to use this information in real-life situations involving teens. Whether you have five minutes or five hours, you will find something useful in this book.  This practical and colorful guide to healthy adolescent development is an essential resource for parents, teens, and all people who work with young people.',
      content_sources: [
        ContentSource.create(
          url: 'https://books.google.com/books?id=Vjn7E0OD1hUC&lpg=PP1&dq=physical%20growth%20in%20adolescence&pg=PR5#v=onepage&q=physical%20growth%20in%20adolescence&f=false',
          content_type: text
        ),
        ContentSource.create(
          url: 'https://www.amazon.com/Years-Explained-Healthy-Adolescent-Development/dp/0615302467',
          content_type: text
        )
      ]
    )

    ContentItem.create(
      title: "Surviving Your Child's Adolescence: How to Understand, and Even Enjoy, the Rocky Road to Independence",
      description: "Expert suggestions for guiding your child through the rough teenage years
        Does it sometimes seem like your teenager is trying to push you over the edge? Learn what your child is going through and what you can do to help your teen navigate this difficult period in this practical guide from psychologist and parenting expert Carl Pickhardt. In an easy-to-read style, Dr. Pickhardt describes a 4-stage model of adolescent growth to help parents anticipate common developmental changes in their daughter or son from late elementary school through the college age years.",
      content_sources: [
        ContentSource.create(
          url: 'https://www.amazon.com/Surviving-Your-Childs-Adolescence-Independence/dp/1118228839',
          content_type: text
        ),
        ContentSource.create(
          url: 'https://www.audible.com/pd/Surviving-Your-Childs-Adolescence-Audiobook/B00DJBW88O?ds_rl=1262685&ds_rl=1263561&ds_rl=1260658&source_code=GO1GB907OSH060513&gclid=Cj0KCQjw9fntBRCGARIsAGjFq5GSgIVA0fhX_jM4-rV7cyLfU0VFT6W7yP_URq_bhN8sixv_74YjurMaAu77EALw_wcB&gclsrc=aw.ds',
          content_type: audio
        ),
        ContentSource.create(
          url: 'https://www.wiley.com/en-us/Surviving+Your+Child%27s+Adolescence%3A+How+to+Understand%2C+and+Even+Enjoy%2C+the+Rocky+Road+to+Independence-p-9781118228838',
          content_type: text
        )
      ]
    )

    # 4.1 Adolescence
    puts "Creating 4.1 Adolescence (Physical Growth) Content Items"

    ContentItem.create(
      title: 'The Growing Child: Adolescent (13 to 18 Years)',
      description: "The teenage years are also called adolescence. Adolescence is a time for growth spurts and puberty changes. An adolescent may grow several inches in several months followed by a period of very slow growth, then have another growth spurt. Changes with puberty (sexual maturation) may occur gradually or several signs may become visible at the same time. There is a great amount of variation in the rate of changes that may occur. Some teenagers may experience these signs of maturity sooner or later than others.",
      content_sources: [
        ContentSource.create(
          url: 'https://www.chop.edu/conditions-diseases/growing-child-adolescent-13-18-years#targetText=Adolescence%20is%20a%20time%20for,visible%20at%20the%20same%20time.',
          content_type: text
        )
      ]
    )

    ContentItem.create(
      title: 'Adolescent Development',
      description: 'The development of children ages 12 through 18 years old should include expected physical and mental milestones.',
      content_sources: [
        ContentSource.create(
          url: 'https://medlineplus.gov/ency/article/002003.htm',
          content_type: text
        )
      ]
    )

    ContentItem.create(
      title: 'Adolescence is a time for growth spurts and puberty changes. An adolescent may grow several inches in several months followed by a period of very slow growth, then have another growth spurt. Changes with puberty (sexual maturation) may occur gradually or several signs may become visible at the same time.',
      content_sources: [
        ContentSource.create(
          url: 'https://www.chop.edu/conditions-diseases/growing-child-adolescent-13-18-years#targetText=Adolescence%20is%20a%20time%20for,visible%20at%20the%20same%20time.',
          content_type: text
        )
      ]
    )

    ContentItem.create(
      title: 'Physical Development in Adolescence',
      content_sources: [
        ContentSource.create(
          url: 'https://www.khanacademy.org/test-prep/mcat/behavior/human-development/v/physical-development-in-adolescence',
          content_type: video
        )
      ]
    )

    ContentItem.create(
      title: 'Physical Growth in Adolescence',
      content_sources: [
        ContentSource.create(
          url: 'https://study.com/academy/lesson/physical-growth-in-adolescence.html',
          content_type: video
        )
      ]
    )

    ContentItem.create(
      title: 'Lecture: Adolescence',
      content_sources: [
        ContentSource.create(
          url: 'https://courses.lumenlearning.com/lifespandevelopment2/chapter/lecture-lesson-6-adolescence/',
          content_type: video
        )
      ]
    )
  end
end
