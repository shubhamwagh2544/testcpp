#include<iostream>
#include <vector>

void func(int);

void for_each(std::vector<int> vec) {
    std::cout << vec.size() << " " << std::endl;
}

int main() {
    std::vector<int> vec = {1, 2 ,3, 4, 5};
    for_each(vec);
    func(5);
}