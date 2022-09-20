#include <iostream> 
#include <fstream> 
#include <algorithm> 
#include <string>  
#include <vector>
#include "ArgumentManager.h"
using namespace std; 

//step 1
void accessFile(string str, string infile, string data[], int n) {
  ifstream input(infile); 
  for(int i = 0; i < n; i++) { //loop through array of read file
    getline(input, str, '}'); //we can use this to getline of str and find '}';
    str.erase(remove(str.begin(), str.end(), ' '), str.end());  //remove ' '
    str.erase(remove(str.begin(), str.end(), '\r'), str.end()); //remove '\r'
    str.erase(remove(str.begin(), str.end(), '\n'), str.end());  // remove '\n'
    str.push_back('}'); //we push back '}' to string str and output it later
    if(str.front() == ',') 
    {
      str.erase(0,1); //we make sure to check if the string in front is a comma we erase 
    } 
    data[i] = str;//now we add str string and push it into our array data using the elemtent i
    }    
}
//step 2
void search(string data[],int left, int RT, string select, int lvl, ofstream &output) { 
  if(left >= RT) { //we search if left is > or == to the right
    string currentData = data[RT]; //we add our to our current data 
    transform(currentData.begin(), currentData.end(), currentData.begin(), ::tolower); //transforms beginngin to end to lowercase
    transform(select.begin(), select.end(), select.begin(), ::tolower); //same thing for our selected/target value
    if(currentData.find(select) != string::npos) { //we must also check if the selected value 1= npos we output
      output << "Level " << to_string(lvl) << ": " << data[RT] << endl; //outputs level and applied to_string method to change into string from integer
    }
    return; 
  } 
  else {
    int middle = left + (RT - left) /2;  //SPLIT AND SEARCH ARRAY but FIRST we need to find the middle
    search(data, left, middle, select, lvl+1, output); //APPLY RECURSION ON SEARCH FUNCTION we look to the left first
    search(data, middle+1, RT, select, lvl+1, output); //then to the right
  }
}
int main(int argc, char* argv[]) {
  ArgumentManager am(argc, argv);
  string infilename = am.get("input"), outfilename = am.get("output"), cfs = am.get("command");
  ofstream output(outfilename); 
  ifstream test(cfs); 
  int n = 6, left = 0, RT = n; //n will be our size

  string select, arrayOfData[n], str; //initialize array, size, left and right so we pass through function 
  getline(test, select);  
  accessFile(str, infilename, arrayOfData, n); //now we accessFile to getline '}' and remove/erase any ' ', '\r', and '\n'
  search(arrayOfData, left, RT-1, select, 0, output); 

  return 0;
}