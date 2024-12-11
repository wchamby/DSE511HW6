team_colors <- c(
  "San Francisco 49ers" = "#AA0000", "Baltimore Ravens" = "#241773",
  "Kansas City Chiefs" = "#E31837", "Dallas Cowboys" = "#003594",
  "New Orleans Saints" = "#D3BC8D", "Tampa Bay Buccaneers" = "#D50A0A",
  "New England Patriots" = "#002244", "Los Angeles Rams" = "#003594",
  "Minnesota Vikings" = "#4F2683", "Seattle Seahawks" = "#69BE28",
  "Atlanta Falcons" = "#A71930", "Houston Texans" = "#03202F",
  "Arizona Cardinals" = "#97233F", "Indianapolis Colts" = "#002C5F",
  "Tennessee Titans" = "#4B92DB", "Los Angeles Chargers" = "#002A5E",
  "Detroit Lions" = "#0076B6", "Carolina Panthers" = "#0085CA",
  "Green Bay Packers" = "#203731", "Cleveland Browns" = "#311D00",
  "Philadelphia Eagles" = "#004C54", "Las Vegas Raiders" = "#A5ACAF",
  "Buffalo Bills" = "#00338D", "Miami Dolphins" = "#008E97",
  "Denver Broncos" = "#FB4F14", "Pittsburgh Steelers" = "#FFB612",
  "Chicago Bears" = "#C83803", "New York Giants" = "#0B2265",
  "Cincinnati Bengals" = "#FB4F14", "New York Jets" = "#125740",
  "Jacksonville Jaguars" = "#006778", "Washington Commanders" = "#773141"
)

team_logos <- c(
  "San Francisco 49ers" = "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/San_Francisco_49ers_logo.svg/100px-San_Francisco_49ers_logo.svg.png",
  "Baltimore Ravens" = "https://upload.wikimedia.org/wikipedia/en/thumb/1/16/Baltimore_Ravens_logo.svg/193px-Baltimore_Ravens_logo.svg.png",
  "Kansas City Chiefs" = "https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Kansas_City_Chiefs_logo.svg/100px-Kansas_City_Chiefs_logo.svg.png",
  "Dallas Cowboys" = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Dallas_Cowboys.svg/100px-Dallas_Cowboys.svg.png",
  "New Orleans Saints" = "https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/New_Orleans_Saints_logo.svg/98px-New_Orleans_Saints_logo.svg.png",
  "Tampa Bay Buccaneers" = "https://upload.wikimedia.org/wikipedia/en/thumb/a/a2/Tampa_Bay_Buccaneers_logo.svg/100px-Tampa_Bay_Buccaneers_logo.svg.png",
  "New England Patriots" = "https://upload.wikimedia.org/wikipedia/en/thumb/b/b9/New_England_Patriots_logo.svg/100px-New_England_Patriots_logo.svg.png",
  "Los Angeles Rams" = "https://upload.wikimedia.org/wikipedia/en/thumb/8/8a/Los_Angeles_Rams_logo.svg/100px-Los_Angeles_Rams_logo.svg.png",
  "Minnesota Vikings" = "https://upload.wikimedia.org/wikipedia/en/thumb/4/48/Minnesota_Vikings_logo.svg/98px-Minnesota_Vikings_logo.svg.png",
  "Seattle Seahawks" = "https://upload.wikimedia.org/wikipedia/en/thumb/8/8e/Seattle_Seahawks_logo.svg/100px-Seattle_Seahawks_logo.svg.png",
  "Atlanta Falcons" = "https://upload.wikimedia.org/wikipedia/en/thumb/c/c5/Atlanta_Falcons_logo.svg/192px-Atlanta_Falcons_logo.svg.png",
  "Houston Texans" = "https://upload.wikimedia.org/wikipedia/en/thumb/2/28/Houston_Texans_logo.svg/100px-Houston_Texans_logo.svg.png",
  "Arizona Cardinals" = "https://upload.wikimedia.org/wikipedia/en/thumb/7/72/Arizona_Cardinals_logo.svg/179px-Arizona_Cardinals_logo.svg.png",
  "Indianapolis Colts" = "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Indianapolis_Colts_logo.svg/100px-Indianapolis_Colts_logo.svg.png",
  "Tennessee Titans" = "https://upload.wikimedia.org/wikipedia/en/thumb/c/c1/Tennessee_Titans_logo.svg/100px-Tennessee_Titans_logo.svg.png",
  "Los Angeles Chargers" = "https://upload.wikimedia.org/wikipedia/en/thumb/7/72/NFL_Chargers_logo.svg/100px-NFL_Chargers_logo.svg.png",
  "Detroit Lions" = "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Detroit_Lions_logo.svg/100px-Detroit_Lions_logo.svg.png",
  "Carolina Panthers" = "https://upload.wikimedia.org/wikipedia/en/thumb/1/1c/Carolina_Panthers_logo.svg/100px-Carolina_Panthers_logo.svg.png",
  "Green Bay Packers" = "https://upload.wikimedia.org/wikipedia/commons/5/50/Green_Bay_Packers_logo.svg",
  "Cleveland Browns" = "https://upload.wikimedia.org/wikipedia/en/thumb/d/d9/Cleveland_Browns_logo.svg/100px-Cleveland_Browns_logo.svg.png",
  "Philadelphia Eagles" = "https://upload.wikimedia.org/wikipedia/en/thumb/8/8e/Philadelphia_Eagles_logo.svg/100px-Philadelphia_Eagles_logo.svg.png",
  "Las Vegas Raiders" = "https://upload.wikimedia.org/wikipedia/en/thumb/4/48/Las_Vegas_Raiders_logo.svg/150px-Las_Vegas_Raiders_logo.svg.png",
  "Buffalo Bills" = "https://upload.wikimedia.org/wikipedia/en/thumb/7/77/Buffalo_Bills_logo.svg/189px-Buffalo_Bills_logo.svg.png",
  "Miami Dolphins" = "https://upload.wikimedia.org/wikipedia/en/thumb/3/37/Miami_Dolphins_logo.svg/100px-Miami_Dolphins_logo.svg.png",
  "Denver Broncos" = "https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Green_Bay_Packers_logo.svg/100px-Green_Bay_Packers_logo.svg.png",
  "Pittsburgh Steelers" = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Pittsburgh_Steelers_logo.svg/100px-Pittsburgh_Steelers_logo.svg.png",
  "Chicago Bears" = "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Chicago_Bears_logo.svg/100px-Chicago_Bears_logo.svg.png",
  "New York Giants" = "https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/New_York_Giants_logo.svg/100px-New_York_Giants_logo.svg.png",
  "Cincinnati Bengals" = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Cincinnati_Bengals_logo.svg/100px-Cincinnati_Bengals_logo.svg.png",
  "New York Jets" = "https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/New_York_Jets_logo.svg/100px-New_York_Jets_logo.svg.png",
  "Jacksonville Jaguars" = "https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Jacksonville_Jaguars_logo.svg/100px-Jacksonville_Jaguars_logo.svg.png",
  "Washington Commanders" = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Washington_football_team_wlogo.svg/1024px-Washington_football_team_wlogo.svg.png"
)





