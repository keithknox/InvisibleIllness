require 'roo'
# illnesses_sheet = Roo::Excelx.new("app/db/illness.xlsx", extension: :xlsx)
# people_sheet = Roo::Excelx.new("app/db/person.xlsx", extension: :xlsx)
#
# illnesses = []
#
#
#
# Illness.create


anxiety = Illness.create(name:"Anxiety", statistics:"2 out of 5", blurb:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sedquis purus. Morbi nec mi sed risus viverra interdum vitae sed ex. Aliquam erat volutpat. Donec eu ipsum mollis, pulvinar mauris eleifend, pretium lorem. Nulla euismod sem sed enim gravida rutrum. Donec varius odio tortor, quis mollis justo congue sit amet. Integer cursus at turpis dapibus dignissim.", quote:"blah blahhhh", charity_name:"Blue Cross", charity_url:"www.wesbite")
ibd = Illness.create(name:"IBD", statistics:"4 out of 5", blurb:"Lorem ipsum adipiscing elit. Nulla sed faucibus magna, eget gravida neque. Donec elit mauris, laoreet quis porta eleifend, venenatis a lorem. Duis ligula est, luctus non convallis in, vulputate elementum velit. Nam ipsum tortor, pellentesque vitae rutrum sed, fringilla quis purus. Morbi nec mi sed risus viverra interdum vitae sed ex. Aliquam erat volutpat. Donec eu ipsum mollis, pulvinar mauris eleifend, pretium lorem. Nulla euismod sem sed enim gravida rutrum. Donec varius odio tortor, quis mollis justo congue sit amet. Integer cursus at turpis dapibus dignissim.", quote:"blah  blah", charity_name:"Red Cross", charity_url:"www.wesbite.com")
lupus = Illness.create(name:"Lupus", statistics:"1 out of 5", blurb:"Lorem ipsum dolor sit ametulla sed faucibus magna, eget gravida neque. Dporta eleifend, venenatis a lorem. Duis ligula est, luctus non convallis in, vulputate elementum velit. Nam ipsum tortor, pellentesque vitae rutrum sed, fringilla quis purus. Morbi nec mi sed risus viverra interdum vitae sed ex. Aliquam erat volutpat. Donec eu ipsum mollis, pulvinar mauris eleifend, pretium lorem. Nulla euismod sem sed enim gravida rutrum. Donec varius odio tortor, quis mollis justo congue sit amet. Integer cursus at turpis dapibus dignissim.", quote:"blah blah blah", charity_name:"Red Blue", charity_url:"www.wesbite.com")

anxiety.people.create(name:"Nic", image_url:"https://pbs.twimg.com/profile_images/3108369733/8abbd5ed4a1768fd4caf33c5e18ac86d_400x400.jpeg", video_url: "www.wesbite.com", story:"Blah de blah", charity_name:"Charity", charity_url:"www.wesbite.com", personal_website:"www.wesbite.com")
ibd.people.create(name:"Biboy", image_url:"https://lh5.googleusercontent.com/-sbfpjZx0PyY/AAAAAAAAAAI/AAAAAAAAALA/nGmbxSTGTHY/photo.jpg", video_url: "https://pbs.twimg.com/profile_images/3108369733/8abbd5ed4a1768fd4caf33c5e18ac86d_400x400.jpeg", story:"Yaddah yaddah yaddah", charity_name:"Charity", charity_url:"www.wesbite.com", personal_website:"www.wesbite.com")
ibd.people.create(name:"Keith", image_url:"https://pbs.twimg.com/profile_images/563718233895612416/yvkbTUqo.jpeg", video_url: "https://pbs.twimg.com/profile_images/3108369733/8abbd5ed4a1768fd4caf33c5e18ac86d_400x400.jpeg", story:"croikey", charity_name:"Charity", charity_url:"www.wesbite.com", personal_website:"www.wesbite.com")
lupus.people.create(name:"Reena", image_url:"https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAL1AAAAJGY3YjRlNTlhLTFmMDUtNDM0YS05N2IxLTlmMjEzNTNlZTEzZQ.jpg", video_url: "www.wesbite.com", story:"words!", charity_name:"Charity", charity_url:"www.wesbite.com", personal_website:"www.wesbite.com")
