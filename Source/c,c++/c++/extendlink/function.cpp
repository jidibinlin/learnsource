#include<iostream>
#include<stdlib.h>
#include"head.h"
using namespace std;
int main(void)
{
    Linklist L;
    Link q,s;
    InitList(&L);
    for(int i=1;i<10;i++)
    {
        Link head;
        MakeNode(&head,i);
        InsFirs(&L.head,&head,&L);
        L.len=i;
    }
    int kk=ListEmpty(L);
    fdsasdf

    q=new LNode;
    q->data=100;
    InsAfter(&L,L.head->Next->Next->Next,q);
    SetCurElem(L.head->Next->Next,1000);
    int k=GetCurElem(L.head->Next);
    LocatePos(L,5,&q);
    LocateElem(L,5,compare);
    system("exit");
}

