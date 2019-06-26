function init(what) {

  if(what.length>=2){
  house   = what.substr(0,1);
  tenant  = what.substr(1,1);

  document.getElementById(house).className  = "nav2";         //  highlight house
  document.getElementById(house + "_link").className = "nav_text2";   //  change house link
  document.getElementById(house + "_sub").className  = "nav3";      //  show and hide stories
  document.getElementById(house + tenant).className = "subnav2high";    //  highlight tenant
  }
  else{
  house   = what.substr(0,1);
  document.getElementById(house).className  = "nav2";         //  highlight house
  document.getElementById(house + "_link").className = "nav_text2";   //  change house link
  }
}

function change(o_id,so_id,link_id) {
      if (o_id.className == "nav") {
        if (so_id == 'A_sub')
          o_id.className = "nav3";
        else
          o_id.className = "nav2";
        if (so_id != 'A_sub')
          document.getElementById(so_id).className = "subnavback2";
        document.getElementById(link_id).className = "nav_text2";
      }
      else {
        o_id.className = "nav";
        if (so_id != 'A_sub')
          document.getElementById(so_id).className = "subnavback";
        document.getElementById(link_id).className = "nav_text";
      }

    }


function highlight(o_id) {
      if (o_id.className == "subnav")
        o_id.className = "subnav2";
      else if (o_id.className == "subnav2")
        o_id.className = "subnav";
    }


function change_main(o_id,link_id) {
      if (o_id.className == "nav") {
        if (link_id == 'A_link')
          o_id.className = "nav3";
        else
          o_id.className = "nav2";
        if (link_id != 'A_link')
        document.getElementById(link_id).className = "nav_text2";
      }
      else {
        o_id.className = "nav";
        if (link_id != 'A_link')
        document.getElementById(link_id).className = "nav_text";
      }

    }





