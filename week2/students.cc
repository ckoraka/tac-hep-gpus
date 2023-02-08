#include <iostream>
#include <string>
using namespace std;


struct tac_hep_student{
  string name;
  string email;
  string experiment;
  string username;
  string university;
  string hobby;
};

void fill_struct(tac_hep_student &stud, string stud_name, string stud_email, string stud_exp, string stud_usrname, string uni, string hob){
  stud.name = stud_name;
  stud.email = stud_email;
  stud.experiment = stud_exp;
  stud.username = stud_usrname;
  stud.university = uni;
  stud.hobby = hob;
}

void print_struct(const tac_hep_student &student){
  cout << "Name: " << student.name << endl;
  cout << "Email: " << student.email << endl;
  cout << "Experiment: " << student.experiment << endl;
  cout << "Username: " << student.username << endl;
  cout << "University: " << student.university << endl;
  cout << "Hobby: " << student.hobby << endl;
}


int main(){

  tac_hep_student Elise;
  tac_hep_student Trevor;
  tac_hep_student Ryan;
  tac_hep_student Stephanie;
  tac_hep_student MattH;
  tac_hep_student MattM;

  fill_struct(Elise, "Elise Chavez","emchavez@wisc.edu","CMS","emchavez","UW-Madison","Cooking");
  fill_struct(Trevor, "Trevor Nelson","twnelson2@wisc.edu","CMS","twnelson2","UW-Madison","Hiking");
  fill_struct(Ryan, "Ryan Simeon","rsimeon@wisc.edu","CMS","rsimeon","UW-Madison","Soccer");
  fill_struct(Stephanie, "Stephanie Kwan","skwan@princeton.edu","CMS","skkwan","Princeton","Birdwatching");
  fill_struct(MattM, "Matt Maroun","mmaroun@umass.edu","ATLAS","<missing>","U-Mass","Playing bass");
  fill_struct(MattH, "Matt Harris","matthewharri@umass.edu","ATLAS","<missing>","U-Mass","<missing>");

  cout << "Here are all the students in the training." << endl << endl;
  print_struct(Elise);
  cout << endl;
  print_struct(Trevor);
  cout << endl;
  print_struct(Ryan);
  cout << endl;
  print_struct(Stephanie);
  cout << endl;
  print_struct(MattH);
  cout << endl;
  print_struct(MattM);
  cout << endl;
}
