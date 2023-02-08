#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

void swap(int &num1, int &num2){
  int num3;
  num3 = num1;
  num1 = num2;
  num2 = num3;
}

int main(){

  int A [10];
  int B [10];

  srand(time(NULL));

  for (int i=0;i<10;i++){
    A[i] = rand()%100;
    B[i] = rand()%100;    
  }

  cout << "This is array A: [";

  for (int i=0; i<10; i++){
    cout << A[i] << " ";
  }

  cout << "]" << endl;

  cout << "This is array B: [";

  for (int i=0; i<10; i++){
    cout << B[i] << " ";
  }

  cout << "]" << endl;

  cout << "Now they will swap." << endl;

  for (int i=0;i<10;i++){
    swap(A[i],B[i]);
  }

  cout << "This is now array A: [";

  for (int i=0; i<10; i++){
    cout << A[i] << " ";
  }

  cout << "]" << endl;

  cout << "This is now array B: [";

  for (int i=0; i<10; i++){
    cout << B[i] << " ";
  }

  cout << "]" << endl;
}
