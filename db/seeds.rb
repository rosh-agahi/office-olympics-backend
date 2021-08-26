
Challenge.create(
  name: "Summer Chopped Challenge",
  description: "this is a chopped challenge",
  rules: "you must use these ingredients"
)
  Submission.create(
    challenge_id: 1,
    name: "Hannah",
    text: "Faced off against my brother",
    videourl: "https://www.youtube.com/watch?v=yih9s9znRbE",
  )
  Submission.create(
    challenge_id: 1,
    name: "Emylee",
    text: "https://www.youtube.com/watch?v=KM1nf9nmbFs",
    videourl: "",
  )
  Submission.create(
    challenge_id: 1,
    name: "Gene",
    text: "All the yum. Look at what I made!",
    videourl: "https://www.youtube.com/watch?v=iQMoyOIRbb4",
  )

Challenge.create(
  name: "Open Mic Virtual Challenge",
  description: "Get ready to showcase your skills! Upload a video of your best performance!",
  rules: "Upload a video of your best performance!"
)
  Submission.create(
    challenge_id: 2,
    name: "Daniella",
    text: "La Vie en Rose",
    videourl: "https://www.youtube.com/watch?v=3Ba_WoSZXvw",
  )
  Submission.create(
    challenge_id: 2,
    name: "Kurt",
    text: "This song is called Cups",
    videourl: "https://www.youtube.com/watch?v=6y1aOg_UO_A",
  )

Challenge.create(
  name: "National Pet Month: Cutest Dog Challenge",
  description: "Lets share the love, show us your adorable fur baby and tell us why they're pawsome!",
  rules: "Submit one photo and add a blurb about your pet."
)

Challenge.create(
  name: "Winter Ugly Sweater Competition",
  description: "Don't worry, we won't forward these photos to grandma.",
  rules: "Submit a photo of you in your ugliest sweater!"
)
  Submission.create(
    challenge_id: 4,
    name: "Will",
    text: "Look at my ugly sweater!",
    videourl: "https://www.youtube.com/watch?v=LHszQ82_FWk",
  )
