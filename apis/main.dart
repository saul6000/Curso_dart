import 'dart:convert';
import 'dart:io';

class Team{
  late String _steam,_sport,_league,
  _league2,_stadium,_location,_description;
  Team({required String steam,
  required String sport,
  required String league,
  required String league2,
  required String stadium,
  required String location,
  required String description}): 
  this._steam=steam,
  this._sport=sport,
  this._league=league,
  this._league2=league2,
  this._stadium=stadium,
  this._location=location,
  this._description=description;
  
  Team.fromJson(Map<String,dynamic> json){
    this._steam=json['strTeam'];
  this._sport=json['strSport'];
  this._league=json['strLeague'];
  this._league2=json['strLeague4'];
  this._stadium=json['strStadium'];
  this._location=json['strLocation'];
  this._description=json['strDescriptionES'];
  }
    @override
  String toString() {
    // TODO: implement toString
    return """ 
    Team:${_steam} 
    Sport: ${_sport}
    League: ${_league}
    League 2:${_league2}
    Stadium:${_stadium}
    Location:${_location}
    description:${_description}     
    """;
  }
}
void main() {
  var file = File("./arsenalApi.json");
  var text = file.readAsStringSync();
  //print(text.substring(0, 100));
  var json = jsonDecode(text);
  //print(json["teams"]);

  var team0 = Team.fromJson(json['teams'][0]);
  print(team0);
}
