# 🔐 API Documentation - Authentication

## Objetivo

Esta API é responsável por autenticar usuários no sistema e fornecer um token JWT para acesso aos demais recursos protegidos.

---

# Endpoint

```http
POST /api/v1/auth/login
```

---

# Descrição

Realiza a autenticação utilizando e-mail e senha.

---

# Headers

| Header       | Valor            |
| ------------ | ---------------- |
| Content-Type | application/json |
| Accept       | application/json |

---

# Request

```json
{
   "email":"usuario@email.com",
   "password":"Senha@123"
}
```

---

# Resposta de Sucesso

**Status Code**

```http
200 OK
```

```json
{
   "token":"eyJhbGciOiJIUzI1...",
   "expiresIn":3600,
   "user":{
      "id":15,
      "name":"Sara Almeida",
      "email":"usuario@email.com"
   }
}
```

---

# Possíveis Erros

## Usuário inexistente

```http
404 Not Found
```

```json
{
   "message":"Usuário não encontrado."
}
```

---

## Senha incorreta

```http
401 Unauthorized
```

```json
{
   "message":"Senha inválida."
}
```

---

## Campos obrigatórios

```http
400 Bad Request
```

```json
{
   "message":"Campos obrigatórios não informados."
}
```

---

# Casos de Teste

| ID      | Cenário              | Resultado Esperado       |
| ------- | -------------------- | ------------------------ |
| API-001 | Login válido         | 200 OK                   |
| API-002 | Senha incorreta      | 401                      |
| API-003 | Usuário inexistente  | 404                      |
| API-004 | Email vazio          | 400                      |
| API-005 | Senha vazia          | 400                      |
| API-006 | JSON inválido        | 400                      |
| API-007 | Caracteres especiais | Validação conforme regra |
| API-008 | SQL Injection        | Requisição rejeitada     |
| API-009 | Token expirado       | 401                      |
| API-010 | Tempo de resposta    | Menor que 2 segundos     |

---

# Validações

Durante os testes serão verificadas:

* Status HTTP
* Headers
* Payload
* Token JWT
* Tempo de resposta
* Estrutura JSON
* Campos obrigatórios
* Tipos de dados
* Segurança da autenticação

---

# Ferramentas Utilizadas

* Postman
* Swagger/OpenAPI
* Oracle SQL
* Git
* GitHub

---

# Observações

Este exemplo foi desenvolvido para fins educacionais e representa um modelo de documentação de API, sem utilizar informações de sistemas reais.
