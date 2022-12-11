#include <iostream>
using namespace std;

int main() {

	string text;

	cout << "Scrivi una frase: ";
	getline(cin, text);

	int charUp = 0, charLow = 0;

	for(long long unsigned int i = 0; i < text.length(); i++) {
		if(text[i] > 96 && text[i] < 123) {
			charLow++;
		} else if(text[i] > 64 && text[i] < 91) {
			charUp++;
		}
	}

	if(charUp > charLow) {
		for(long long unsigned int i = 0; i < text.length(); i++) {
			text[i] = tolower(text[i]);
		}
	cout << "Text to lower: " + text;
	} else if(charUp < charLow) {
		for(long long unsigned int i = 0; i < text.length(); i++) {
			text[i] = toupper(text[i]);
		}
	cout << "Text to upper: " + text;
	}

	return 0;
}
