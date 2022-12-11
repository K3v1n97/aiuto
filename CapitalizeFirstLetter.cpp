#include <iostream>
using namespace std;

int main() {

	string text;

	cout << "Scrivi una frase qualsiasi: ";
	getline(cin, text);
	int i = {0};

	for(i = 0; i < text.length();) {
		if(text[i] > 97 && text[i] < 122 && i == 0) {
			text[i] = toupper(text[i]);
			i++;
		} else if (text[i] == ' ' && text[i + 1] != ' ') {
			text[i + 1] = toupper(text[i + 1]);
		}
		i++;
	}

	cout << text;

	return 0;
}
