#include <iostream>
using namespace std;

int main() {

	string frase = "";
	string newFrase = "";

	cout << "Inserisci una frase: ";
	getline(cin, frase);

	for(char c : frase) {
		if(c >= 65 && c <= 90) {
			newFrase += c;
		} else if (c >= 97 && c <= 122) {
			newFrase += c;
		}
	}

	for (unsigned long long int i = 0; i <= newFrase.length() / 2; i++) {
		if(newFrase[i] != newFrase[newFrase.length() - 1 - i]){
			cout << "La frase non è palindroma";
			return false;
		}
	}
	cout << "La frase è palindroma";
	return true;
}
