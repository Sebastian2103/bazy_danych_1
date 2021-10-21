// cw2.cpp : Ten plik zawiera funkcję „main”. W nim rozpoczyna się i kończy wykonywanie programu.
//

#include "pch.h"
#include <iostream>
#include <vector>

void wypisz(int w)
{
	std::cout << w << "\n";
}

bool czy_nalezy(std::vector<int>tab, int element)
{
	for (int i = 0; i < tab.size(); i++)
	{
		if(tab[i]==element)
	}
}

void wypisz(std::vector<int>tab)
{
	for (int i = 0; i < tab.size(); i++)
	{
		std::cout << tab[i] << ", ";
	}
	std::cout << std::endl;
}

int suma(int a, int b)
{
	return a + b;
}
int suma(int a, int b,int c)
{
	int wynik = suma(a, b);
	return suma(wynik, c);
}

int main()
{
	std::cout << "Hello World!\n";
	int a = 5 + 3;
	int b = suma(a, 5, 7);
	wypisz(b);
	//std::cin >> b;
	if (a > b)
	{
		wypisz(a);
	}
	else
	{
		std::cout << "ALe lipa!\n";
	}
	std::vector<int> tab;
	tab = { 1,3,5,7,9,11,13,15};
	//wypisz(tab.size());
	//for (int i = 0; i < tab.size(); i++)
	//{
	//	std::cout << tab[i] << ", ";
	//}
	wypisz(tab);
	
	system("pause");
}


// Uruchomienie programu: Ctrl + F5 lub menu Debugowanie > Uruchom bez debugowania
// Debugowanie programu: F5 lub menu Debugowanie > Rozpocznij debugowanie

// Porady dotyczące rozpoczynania pracy:
//   1. Użyj okna Eksploratora rozwiązań, aby dodać pliki i zarządzać nimi
//   2. Użyj okna programu Team Explorer, aby nawiązać połączenie z kontrolą źródła
//   3. Użyj okna Dane wyjściowe, aby sprawdzić dane wyjściowe kompilacji i inne komunikaty
//   4. Użyj okna Lista błędów, aby zobaczyć błędy
//   5. Wybierz pozycję Projekt > Dodaj nowy element, aby utworzyć nowe pliki kodu, lub wybierz pozycję Projekt > Dodaj istniejący element, aby dodać istniejące pliku kodu do projektu
//   6. Aby w przyszłości ponownie otworzyć ten projekt, przejdź do pozycji Plik > Otwórz > Projekt i wybierz plik sln
