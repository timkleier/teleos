desc 'seed the database'

namespace :db do
  task :seed => :environment do
    # Content Types
    audio = ContentType.create(name: 'Audio')
    video = ContentType.create(name: 'Video')
    text = ContentType.create(name: 'Text')

    # 4.0 Adolescence
    puts "Creating 4.0 Adolescence Content Items"
    adolescence_4_0_a = ContentItem.create(title: 'Interview with Stacey Sumereau',
      content_sources: [
        ContentSource.create(url: 'https://podcasts.apple.com/us/podcast/104-interview-with-stacey-sumereau/id1118889657?i=1000451962042'),
        ContentSource.create(url: 'https://www.stitcher.com/podcast/roy-petitfils-2/todays-teenager')
      ],
      content_type: audio)
    adolescence_4_0_c = ContentItem.create(title: 'Dr. Michael Reichert Talks Raising Healthy Boys',
      content_sources: [
        ContentSource.create(url: 'https://podcasts.apple.com/us/podcast/103-dr-michael-reichert-talks-raising-healthy-boys/id1118889657?i=1000446380060')
      ],
      content_type: audio)
    adolescence_4_0_b = ContentItem.create(title: 'The Teen Years Explained: A Guide to Healthy Adolescent Development',
      content_sources: [
        ContentSource.create(url: 'https://books.google.com/books?id=Vjn7E0OD1hUC&lpg=PP1&dq=physical%20growth%20in%20adolescence&pg=PR5#v=onepage&q=physical%20growth%20in%20adolescence&f=false'),
        ContentSource.create(url: 'https://www.amazon.com/Years-Explained-Healthy-Adolescent-Development/dp/0615302467')
      ],
      content_type: text)

    # 4.1 Adolescence
    puts "Creating 4.1 Adolescence (Physical Growth) Content Items"
    adolescence_4_1_a = ContentItem.create(title: 'The Growing Child: Adolescent (13 to 18 Years)',
      content_sources: [
        ContentSource.create(url: 'https://www.chop.edu/conditions-diseases/growing-child-adolescent-13-18-years#targetText=Adolescence%20is%20a%20time%20for,visible%20at%20the%20same%20time.')
      ],
      content_type: text)
    adolescence_4_1_b = ContentItem.create(title: 'Adolescent Development',
      content_sources: [
        ContentSource.create(url: 'https://medlineplus.gov/ency/article/002003.htm')
      ],
      content_type: text)
    adolescence_4_1_c = ContentItem.create(title: 'Adolescence is a time for growth spurts and puberty changes. An adolescent may grow several inches in several months followed by a period of very slow growth, then have another growth spurt. Changes with puberty (sexual maturation) may occur gradually or several signs may become visible at the same time.',
      content_sources: [
        ContentSource.create(url: 'https://www.chop.edu/conditions-diseases/growing-child-adolescent-13-18-years#targetText=Adolescence%20is%20a%20time%20for,visible%20at%20the%20same%20time.')
      ],
      content_type: text)
    adolescence_4_1_d = ContentItem.create(title: 'Physical Development in Adolescence',
      content_sources: [
        ContentSource.create(url: 'https://www.khanacademy.org/test-prep/mcat/behavior/human-development/v/physical-development-in-adolescence')
      ],
      content_type: video)
    adolescence_4_1_e = ContentItem.create(title: 'Physical Growth in Adolescence',
      content_sources: [
        ContentSource.create(url: 'https://study.com/academy/lesson/physical-growth-in-adolescence.html')
      ],
      content_type: video)
    adolescence_4_1_f = ContentItem.create(title: 'Lecture: Adolescence',
      content_sources: [
        ContentSource.create(url: 'https://courses.lumenlearning.com/lifespandevelopment2/chapter/lecture-lesson-6-adolescence/')
      ],
      content_type: video)
  end
end
