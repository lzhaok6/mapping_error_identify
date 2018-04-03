// error_identify.cpp : Defines the entry point for the console application.
//
#include "stdafx.h"
#include <iostream> 
#include <string>
#include <fstream>

//this code is used for extracting percentage mapping error given in MpCCI documentation.  
int main()
{
	std::ifstream in;
	std::ofstream myfile;
	myfile.open("error_output.txt");
	std::string filename; 
	std::cout << "input the file name to be read: " << std::endl;
	std::getline(std::cin, filename, '\n');
	in.open(filename);
	if (!in) {
		std::cerr << "cannot open the file" << std::endl;
		return 1;
	}
	char buffer[256];
	while (!in.eof())
	{
		in.getline(buffer, 256, '\n'); //loop through each line
		if (buffer[4] == 'X'&&buffer[5] == ':') { //loop through each surface 
			myfile << buffer[80] << buffer[81] << buffer[82] << buffer[83] << buffer[84] << buffer[85] << " ";
		}
		if (buffer[4] == 'Y'&&buffer[5] == ':') { 
			myfile << buffer[80] << buffer[81] << buffer[82] << buffer[83] << buffer[84] << buffer[85] << " ";
		}
		if (buffer[4] == 'Z'&&buffer[5] == ':') {
			myfile << buffer[80] << buffer[81] << buffer[82] << buffer[83] << buffer[84] << buffer[85] << std::endl;
		}
	}
	in.close();
    return 0;
}

