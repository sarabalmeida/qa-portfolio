# 🔌 API Testing

## Objetivo

Esta pasta reúne exemplos de documentação e validação de APIs REST utilizados em atividades de Qualidade de Software.

Os exemplos apresentados são fictícios e têm finalidade exclusivamente educacional e demonstrativa, preservando a confidencialidade de projetos reais.

---

# Escopo

Os exemplos contemplam testes em diferentes tipos de endpoints, incluindo:

* Autenticação
* Cadastro de usuários
* Consulta de dados
* Atualização de registros
* Exclusão de registros
* Validação de regras de negócio

---

# Ferramentas

* Postman
* Swagger / OpenAPI
* JSON
* REST
* HTTP
* Git

---

# Estrutura da Pasta

```text
06-API-Testing/
│
├── collections/
├── environments/
├── documentation/
├── examples/
└── automated-tests/
```

---

# Validações Realizadas

## Status Code

* 200 OK
* 201 Created
* 204 No Content
* 400 Bad Request
* 401 Unauthorized
* 403 Forbidden
* 404 Not Found
* 409 Conflict
* 422 Unprocessable Entity
* 500 Internal Server Error

---

## Headers

Validação de:

* Content-Type
* Authorization
* Accept
* Cache-Control

---

## Response Body

Validação de:

* Estrutura JSON
* Campos obrigatórios
* Tipos de dados
* Valores esperados
* Regras de negócio

---

## Tempo de Resposta

Exemplos de validação para garantir que o endpoint responda dentro do tempo esperado para o cenário de teste.

---

## Banco de Dados

Sempre que aplicável, a persistência das informações é validada por meio de consultas SQL.

---

# Fluxos Cobertos

## Login

* Login com sucesso
* Usuário inexistente
* Senha inválida
* Token inválido

---

## Cadastro

* Cadastro válido
* Dados obrigatórios
* Dados duplicados
* Validação de formato

---

## Consulta

* Registro encontrado
* Registro inexistente
* Paginação
* Filtros

---

## Atualização

* Atualização válida
* Atualização parcial
* Dados inválidos

---

## Exclusão

* Exclusão realizada
* Registro inexistente
* Exclusão duplicada

---

# Boas Práticas

* Utilização de variáveis de ambiente.
* Organização por coleções.
* Reutilização de autenticação.
* Nomenclatura padronizada.
* Validação automatizada com scripts de teste.
* Documentação dos endpoints.

---

# Próximos Conteúdos

Esta pasta será complementada com:

* Collections do Postman.
* Ambientes de teste.
* Scripts de automação.
* Exemplos de payloads.
* Casos de teste de API.
* Evidências de execução.
