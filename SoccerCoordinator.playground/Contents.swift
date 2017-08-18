//creates every player dictionary

var joeSmith: Dictionary<String, Any> = [
    "name": "Joe Smith",
    "height": 42,
    "experience": true,
    "guardian": "Jim and Jan Smith"
]

var jillTanner: Dictionary<String, Any> = [
    "name": "Jill Tanner",
    "height": 36,
    "experience": true,
    "guardian": "Clara Tanner"
]

var billBon: Dictionary<String, Any> = [
    "name": "Bill Bon",
    "height": 43,
    "experience": true,
    "guardian": "Sara and Jenny Bon"
]

var evaGordon: Dictionary<String, Any> = [
    "name": "Eva Gordan",
    "height": 45,
    "experience": false,
    "guardian": "Wendy and Mike Gordan"
]

var mattGill: Dictionary<String, Any> = [
    "name": "Matt Gill",
    "height": 40,
    "experience": false,
    "guardian": "Charles and Sylvia Gill"
]

var kimmyStein: Dictionary<String, Any> = [
    "name": "Kimmy Stein",
    "height": 41,
    "experience": false,
    "guardian": "Bill and Hillary Stein"
]

var sammyAdams: Dictionary<String, Any> = [
    "name": "Sammy Adams",
    "height": 45,
    "experience": false,
    "guardian": "Jeff Adams"
]

var karlSaygan: Dictionary<String, Any> = [
    "name": "Karl Saygan",
    "height": 42,
    "experience": true,
    "guardian": "Heather Bledsoe"
]

var suzaneGreenberg: Dictionary<String, Any> = [
    "name": "Suzane Greenberg",
    "height": 44,
    "experience": true,
    "guardian": "Henrietta Dumas"
]

var salDali: Dictionary<String, Any> = [
    "name": "Sal Dali",
    "height": 41,
    "experience": false,
    "guardian": "Gala Dali"
]

var joeKavalier: Dictionary<String, Any> = [
    "name": "Joe Kavalier",
    "height": 39,
    "experience": false,
    "guardian": "Sam and Elaine Kavalier"
]

var benFinkelstein: Dictionary<String, Any> = [
    "name": "Ben Finkelstein",
    "height": 44,
    "experience": false,
    "guardian": "Aaron and Kill Finkletstein"
]

var diegoSoto: Dictionary<String, Any> = [
    "name": "Diego Soto",
    "height": 41,
    "experience": true,
    "guardian": "Robin and Sarika Soto"
]

var chloeAlaska: Dictionary<String, Any> = [
    "name": "Chloe Alaska",
    "height": 47,
    "experience": false,
    "guardian": "David and Jamie Alaska"
]

var arnoldWillis: Dictionary<String, Any> = [
    "name": "Arnold Willis",
    "height": 43,
    "experience": false,
    "guardian": "Claire Willis"
]

var phillipHelm: Dictionary<String, Any> = [
    "name": "Phillip Helm",
    "height": 44,
    "experience": true,
    "guardian": "Thomas Helm and Eva Jones"
]

var lesClay: Dictionary<String, Any> = [
    "name": "Les Clay",
    "height": 42,
    "experience": true,
    "guardian": "Wynonna Brown"
]

var herschelKrustofski: Dictionary<String, Any> = [
    "name": "Herschel Krustofski",
    "height": 45,
    "experience": true,
    "guardian": "Hyman and Rachel Krustofski"
]

//creates a collection of all players
var players: [Dictionary<String,Any>] = [
    joeSmith,
    jillTanner,
    billBon,
    evaGordon,
    mattGill,
    kimmyStein,
    sammyAdams,
    karlSaygan,
    suzaneGreenberg,
    salDali,
    joeKavalier,
    benFinkelstein,
    diegoSoto,
    chloeAlaska,
    arnoldWillis,
    phillipHelm,
    lesClay,
    herschelKrustofski]

//creates an empty collection of experienced players
var experiencedPlayers: [Dictionary<String,Any>] = [];

//creates an empty collection of experienced players
var inexperiencedPlayers: [Dictionary<String,Any>] = [];

//create an iteration to sort a group of players into an experienced team and an inexperienced team
for player in players {
    if (player["experience"] as! Bool == true) {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}

//creates three empty collections of team Sharks, Dragons, and Raptors for team assignment
var teamSharks: [Dictionary<String,Any>] = [];
var teamDragons: [Dictionary<String,Any>] = [];
var teamRaptors: [Dictionary<String,Any>] = [];



//create a sorting method to sort any group of players into 3 teams Shark, Dragon, and Raptors
func sort( players: [Dictionary<String,Any>]) -> () {
    let playersTotal = players.count
    for index in 0 ..< playersTotal {
        switch index % 3 {
        case 1:
            teamSharks.append(players[index])
        case 2:
            teamDragons.append(players[index])
        default:
            teamRaptors.append(players[index])
        }
    }
}

//use the sorting method on the experienced team and the inexperienced team to create 3 teams Shark, Dragon, and Raptors

sort(players: experiencedPlayers)
sort(players: inexperiencedPlayers)

teamSharks.count
teamDragons.count
teamRaptors.count


























