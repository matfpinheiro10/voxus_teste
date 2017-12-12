# voxus_teste

API de CRUD finalizadas para acesso por um portal WEB e um App IOS como client.
4 horas para a criação do ambiente Java. Utilizando o framework Spring com Spring Boot, Maven, Hibernate, Tomcat 8.5 e MySql.
3 horas para a criação dos endpoints.
2 horas para criação das Models (Entity's), que já fazem a criação das tabelas no banco.

A ideia é concluir o portal e depois seguir com o desafio maior que é o APP IOS, já iniciado.

Portal feito com JSP e bootstrap (3 horas)! Infelizmente, só consegui fazer as APIs do crud funcionarem pelo postman, pelo portal parei em um ponto que, por falta de tempo pessoal, não foi concluído com êxito (um erro, acredito que de ambiente, me impediu). Tentei encontrar a solução por varias horas, e não fui por um caminho diferente, que seria o certo.

Para testar as APIs, deverá ser criado um banco de dados e em application.properties troque "spring.jpa.hibernate.ddl-auto=none" para "spring.jpa.hibernate.ddl-auto=create" que o próprio Spring, criará as tabelas no banco definido em application.properties.
Estou usando o tomcat de forma embeed no projeto, caso queiram testar desta forma, deverão adicionar um server (apache tomcat) no próprio eclipse.

Desta forma, inicie o projeto e acesse as URLs.
