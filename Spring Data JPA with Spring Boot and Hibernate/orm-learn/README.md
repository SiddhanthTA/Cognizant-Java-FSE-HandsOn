# Hands-on 4

## JPA
- Java Persistence API specification
- Defines standard interfaces
- Does not provide implementation

## Hibernate
- Implementation of JPA
- Handles ORM mapping
- Converts Java objects to database records

## Spring Data JPA
- Built on top of JPA
- Uses Hibernate internally
- Eliminates boilerplate CRUD code
- Provides JpaRepository and query methods
- Automatically manages transactions

## Comparison

| Feature | JPA | Hibernate | Spring Data JPA |
|---------|-----|-----------|-----------------|
| Type | Specification | Framework | Framework |
| ORM | No | Yes | Uses Hibernate |
| CRUD | Manual | Manual | Automatic |
| Transactions | Manual | Manual | Automatic |
| Repository Support | No | No | Yes |