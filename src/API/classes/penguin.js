module.exports = {
    Ban
};

/*
    Represents a ban of a penguin.

    Fields info:
        penguin: a Penguin object
        moderator: a Penguin object
        

*/
class Ban{
  
  id = -1;
  penguin;
  moderator;
  coins = 0;
  color = 0;
  permaBan = false;
  registrationDate = '';

  update(){

  }

  create(){

  }

  //moderator: a Penguin object
  ban(moderator, hours, reason){

  }

  //moderator: a Penguin object
  kick(moderator){

  }

}




