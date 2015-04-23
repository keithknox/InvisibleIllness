require 'roo'
# illnesses_sheet = Roo::Excelx.new("app/db/illness.xlsx", extension: :xlsx)
# people_sheet = Roo::Excelx.new("app/db/person.xlsx", extension: :xlsx)
# binding.pry
# illnesses_header = illnesses_sheet.row(1).split


anxiety = Illness.create(
  name:"Anxiety",
  statistics:"Anxiety disorders are the most common mental illness in the US, affecting 40 million adults in the United States.",
  blurb:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sedquis purus. Morbi nec mi sed risus viverra interdum vitae sed ex. Aliquam erat volutpat. Donec eu ipsum mollis, pulvinar mauris eleifend, pretium lorem. Nulla euismod sem sed enim gravida rutrum. Donec varius odio tortor, quis mollis justo congue sit amet. Integer cursus at turpis dapibus dignissim.",
  charity_url:"www.wesbite.com")

ibd = Illness.create(
  name:"IBD",
  statistics:"Approximately 1.6 million Americans currently have IBD.",
  blurb:"Inflammatory bowel disease (IBD) involves chronic inflammation of all or part of your digestive tract. IBD primarily includes ulcerative colitis and Crohn's disease. Both usually involve severe diarrhea, pain, fatigue and weight loss. IBD can be debilitating and sometimes leads to life-threatening complications.

  Ulcerative colitis (UL-sur-uh-tiv koe-LIE-tis) is an inflammatory bowel disease that causes long-lasting inflammation and sores (ulcers) in the innermost lining of your large intestine (colon) and rectum.

  Crohn's disease is an IBD that cause inflammation of the lining of your digestive tract. In Crohn's disease, inflammation often spreads deep into affected tissues. The inflammation can involve different areas of the digestive tract — the large intestine, small intestine or both. For more information...",
  charity_url:"www.wesbite.com")

lupus = Illness.create(
    name:"Lupus",
    statistics:"It's estimated that 1.5 million Americans, and at least five million people worldwide, have a form of lupus.",
    blurb:"Lupus is a chronic inflammatory disease that occurs when your body's immune system attacks your own tissues and organs. Inflammation caused by lupus can affect many different body systems — including your joints, skin, kidneys, blood cells, brain, heart and lungs.

    Lupus can be difficult to diagnose because its signs and symptoms often mimic those of other ailments. The most distinctive sign of lupus — a facial rash that resembles the wings of a butterfly unfolding across both cheeks — occurs in many but not all cases of lupus. For more information...",
    charity_url:"www.wesbite.com")

ibd.people.create(
  name:"Carly M.",
  image_url:"http://media.npr.org/assets/img/2015/03/08/00-medx-2014-question-rs-943a8c6e10daa9f32683ac053e816ad43acaed1e-s800-c85.jpg",
  video_url: "www.video.com",
  story:"Carly spent many years too sick to do much beyond essentials. Now, still not in remission, she has earned a BFA in graphic design and MBA, and runs a local IBD support group. Based in Washington, DC, she is excited to expand my opportunities to advocate and partner with health care professionals and designers.",
  charity_name:"Take Steps for Crohn's", charity_url:"http://online.ccfa.org/site/TR/TakeSteps/Chapter-GreaterWashingtonDCVirginia?pg=team&fr_id=4806&team_id=164720",
  personal_website:"http://blog.chronicarly.com")

ibd.people.create(
  name:"Samuel K.",
  image_url:"http://www.how-to-draw-funny-cartoons.com/image-files/cartoon-running-7.gif",
  video_url: "www.video.com",
  story:"Samuel ignored his illness during college, because it didn't seem that bad. Once he got employer provided health insurance he was dianogsed with Colitis. He takes a lot of medication every day. Based in San Diego, CA, he works with local a local IBD support group for kids.",
  charity_name:"Crohn's & Colitis Foundation",
  charity_url:"http://www.ccfa.org",
  personal_website:"www.website.com")

anxiety.people.create(
  name:"Nic",
  image_url:"https://pbs.twimg.com/profile_images/3108369733/8abbd5ed4a1768fd4caf33c5e18ac86d_400x400.jpeg",
  video_url: "www.wesbite.com",
  story:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sedquis purus. Morbi nec mi sed risus viverra interdum vitae sed ex. Aliquam erat volutpat. Donec eu ipsum mollis, pulvinar mauris eleifend, pretium lorem. Nulla euismod sem sed enim gravida rutrum. Donec varius odio tortor, quis mollis justo congue sit amet. Integer cursus at turpis dapibus dignissim.",
  charity_name:"Stop Anxiety",
  charity_url:"www.website.com",
  personal_website:"http://www.smallnic.com")

anxiety.people.create(
  name:"Biboy",
  image_url:"https://lh5.googleusercontent.com/-sbfpjZx0PyY/AAAAAAAAAAI/AAAAAAAAALA/nGmbxSTGTHY/photo.jpg",
  video_url: "www.wesbite.com",
  story:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sedquis purus. Morbi nec mi sed risus viverra interdum vitae sed ex. Aliquam erat volutpat. Donec eu ipsum mollis, pulvinar mauris eleifend, pretium lorem. Nulla euismod sem sed enim gravida rutrum. Donec varius odio tortor, quis mollis justo congue sit amet. Integer cursus at turpis dapibus dignissim.",
  charity_name:"Donate to Anxiety",
  charity_url:"www.website.com",
  personal_website:"http://www.biboy.com")

lupus.people.create(
  name:"Keith",
  image_url:"https://pbs.twimg.com/profile_images/563718233895612416/yvkbTUqo.jpeg",
  video_url: "www.website.com",
  story:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sedquis purus. Morbi nec mi sed risus viverra interdum vitae sed ex. Aliquam erat volutpat. Donec eu ipsum mollis, pulvinar mauris eleifend, pretium lorem. Nulla euismod sem sed enim gravida rutrum. Donec varius odio tortor, quis mollis justo congue sit amet. Integer cursus at turpis dapibus dignissim.",
  charity_name:"Stop Lupus",
  charity_url:"www.website.com",
  personal_website:"www.keith.com")

lupus.people.create(
  name:"Reena",
  image_url:"https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAL1AAAAJGY3YjRlNTlhLTFmMDUtNDM0YS05N2IxLTlmMjEzNTNlZTEzZQ.jpg",
  video_url: "www.wesbite.com",
  story:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sedquis purus. Morbi nec mi sed risus viverra interdum vitae sed ex. Aliquam erat volutpat. Donec eu ipsum mollis, pulvinar mauris eleifend, pretium lorem. Nulla euismod sem sed enim gravida rutrum. Donec varius odio tortor, quis mollis justo congue sit amet. Integer cursus at turpis dapibus dignissim.",
  charity_name:"Donate to Lupus",
  charity_url:"www.website.com",
  personal_website:"www.reena.com")
