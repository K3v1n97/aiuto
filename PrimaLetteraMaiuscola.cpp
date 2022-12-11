#include <iostream>
using namespace std;

int main() {

	string text;

	cout << "Inserisci una frase: ";
	getline(cin, text);

	for(long long unsigned int i = 0; i < text.length(); i++) {
		if(text[i] == ' ' && text[i + 1] != ' ') {
			text[i + 1] = toupper(text[i + 1]);
		} else if(i == 0) {
			text[i] = toupper(text[i]);
		}
	}

	cout << "Text first letter up: " + text << endl;
	return 0;
}
