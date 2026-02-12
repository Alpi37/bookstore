namespace my.bookshop;
using { cuid, managed } from '@sap/cds/common';

entity Books: cuid, managed {
    title: String(111);
    stock: Integer;
    author: Association to Authors;
}

entity Authors: cuid, managed {
    name: String(111);
    books: Association to many Books on books.author = $self;
}