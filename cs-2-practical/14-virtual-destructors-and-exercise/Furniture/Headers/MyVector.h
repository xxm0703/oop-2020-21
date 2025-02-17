#pragma once
#include <iostream>
#include <cstdarg>
#include <cstdio>
#include "Furniture.h"

template<typename T>
class MyVector{
private:
    T* members = nullptr;
    size_t size = 0;
    size_t allocated = 0;

    void allocate(size_t require);
    void copyMember(T* src, T* dst, size_t size);

public:
    MyVector() = default;
    explicit MyVector(size_t size);
    ~MyVector();
    MyVector(const MyVector<T>& other);
    MyVector<T>& operator=(const MyVector<T>& other);
    MyVector(MyVector<T>&& other) noexcept;
    MyVector<T>& operator=(MyVector<T>&& other) noexcept;

    void push_back(const T& element);
    void push_back(T&& element);
    void removeAt(size_t idx);

    template<class... Args>
    void emplace_back(Args&&... args ) {
        allocate(size+1);
        this->members[size++] = T(std::forward<Args>(args)...);
    }
    void pop_back();
    T back();
    T operator[](size_t index);
    size_t getSize() const;
    void clear();

    void removeFurniture(unsigned int ID, FurnitureType type);
    void removeFurniture(const Furniture& f);
    void removeFurniture(Furniture&& f);

};


template<typename T>
MyVector<T>::MyVector(size_t size) {
    allocate(size);
}



template<typename T>
void MyVector<T>::pop_back() {
    if(this->size > 0) {
        size--;
        //  delete &members[size];
    }
}

template<typename T>
T MyVector<T>::back() {
    if(size > 0) return members[size-1];
    throw std::out_of_range("There are no elements");
}

template<typename T>
T MyVector<T>::operator[](size_t index) {
    if(index < size) return members[index];
    throw std::out_of_range("There is no element on that index");
}

template<typename T>
size_t MyVector<T>::getSize() const {
    return this->size;
}

template<typename T>
MyVector<T>::~MyVector() {
    clear();
}

template<typename T>
MyVector<T>::MyVector(const MyVector<T> &other) {
    allocate(other.size);
    copyMember(members, other.members, other.size);
    size = other.size;

}

template<typename T>
MyVector<T> &MyVector<T>::operator=(const MyVector<T> &other) {
    if(this != &other) {
        T* newMembers = new T[other.allocated];
        copyMember(newMembers,other.members,other.size);
        delete[] this->members;
        this->members = newMembers;
        this->size = other.size;
        this->allocated = other.allocated;
    }
    return *this;
}


template<typename T>
MyVector<T>::MyVector(MyVector<T> &&other) noexcept {
    this->members = other.members;
    this->size = other.size;
    this->allocated = other.allocated;
    other.members = nullptr;
}

template<typename T>
MyVector<T> &MyVector<T>::operator=(MyVector<T> &&other) noexcept {
    delete[] this->members;
    this->members = other.members;
    this->size = other.size;
    this->allocated = other.allocated;
    other.members = nullptr;

    return *this;
}

template<typename T>
void MyVector<T>::allocate(size_t require) {
    if(this->allocated < require){
        size_t newAllocate = allocated==0 ? 1 : allocated * 2;
        T* newMembers = new T[newAllocate];
        copyMember(newMembers,this->members,this->size);
        allocated = newAllocate;
        delete[] this->members;
        this->members = newMembers;
        //allocate(allocated);
    }
}

template<typename T>
void MyVector<T>::copyMember(T *src, T *dst, size_t size) {
    for(size_t i = 0; i < size; i++){
        src[i] = dst[i];
    }
}

template<typename T>
void MyVector<T>::clear() {
    this->size = this->allocated = 0;
    delete[] members;
}

template<typename T>
void MyVector<T>::push_back(const T& element) {
    allocate(size+1);
    this-> members[size++] = element;
}

template<typename T>
void MyVector<T>::push_back(T &&element) {
    allocate(this->size+1);
    this->members[size++] = std::move(element);
}

template<class T>
void MyVector<T>::removeAt(size_t idx) {
    for(size_t i = idx+1; i < this->size; i++){
        members[i-1] = members[i];
    }
    pop_back();
}


template<>
void MyVector<Furniture*>::removeFurniture(unsigned int ID, FurnitureType type) {
    for(size_t i = 0; i <size;++i)
        if(members[i]->ID == ID && type == members[i]->getType() ) return removeAt(i);
}

template<>
void MyVector<Furniture*>::removeFurniture(const Furniture &f) {
    removeFurniture(f.ID,f.getType());
}

template<>
void MyVector<Furniture*>::removeFurniture(Furniture &&f) {
    removeFurniture(f.ID,f.getType());
}