# 📖 US-001 – Login no Sistema

## Projeto

**FinControl – Sistema de Gestão Financeira para Pequenas Empresas**

---

# História de Usuário

**Como** um usuário autorizado do sistema,

**Quero** realizar login utilizando meu e-mail e minha senha,

**Para que** eu possa acessar as funcionalidades permitidas de acordo com meu perfil de acesso.

---

# Objetivo de Negócio

Garantir que apenas usuários autenticados tenham acesso às informações financeiras do sistema, protegendo dados sensíveis e assegurando a rastreabilidade dos acessos.

---

# Regras de Negócio

### RN001

O e-mail deve estar previamente cadastrado.

### RN002

A senha deve corresponder ao usuário informado.

### RN003

Usuários inativos não poderão acessar o sistema.

### RN004

Após cinco tentativas consecutivas de senha incorreta, a conta deverá ser bloqueada por 30 minutos.

### RN005

Após autenticação bem-sucedida, o sistema deverá registrar:

* Usuário
* Data e hora
* Endereço IP
* Navegador
* Sistema operacional

### RN006

A sessão deverá expirar após 30 minutos de inatividade.

### RN007

O usuário poderá realizar logout a qualquer momento.

### RN008

Após o logout, o token de autenticação deverá ser invalidado.

---

# Critérios de Aceite

## Cenário 1 — Login realizado com sucesso

**Dado que** o usuário esteja cadastrado e ativo

**Quando** informar e-mail e senha válidos

**Então** o sistema deverá autenticar o usuário

**E** redirecioná-lo para o Dashboard.

---

## Cenário 2 — Senha incorreta

**Dado que** o usuário esteja cadastrado

**Quando** informar uma senha incorreta

**Então** o sistema deverá impedir o acesso

**E** apresentar a mensagem:

> E-mail ou senha inválidos.

---

## Cenário 3 — Usuário inexistente

**Dado que** o e-mail informado não esteja cadastrado

**Quando** tentar realizar login

**Então** o sistema deverá impedir o acesso

**E** apresentar uma mensagem de autenticação inválida.

---

## Cenário 4 — Usuário inativo

**Dado que** o usuário esteja inativo

**Quando** realizar login

**Então** o sistema deverá impedir o acesso.

---

## Cenário 5 — Campos obrigatórios

**Quando** o usuário não informar e-mail ou senha

**Então** o sistema deverá destacar os campos obrigatórios

**E** impedir o envio da solicitação.

---

## Cenário 6 — Conta bloqueada

**Dado que** o usuário tenha excedido o limite de tentativas

**Quando** tentar realizar um novo login

**Então** o sistema deverá impedir o acesso

**E** informar que a conta está temporariamente bloqueada.

---

## Cenário 7 — Logout

**Dado que** o usuário esteja autenticado

**Quando** selecionar a opção **Sair**

**Então** a sessão deverá ser encerrada

**E** o token de autenticação invalidado.

---

# Requisitos Não Funcionais

* Tempo médio de resposta inferior a 2 segundos.
* Comunicação obrigatória via HTTPS.
* Compatibilidade com Chrome, Edge e Firefox.
* Interface responsiva para desktop e dispositivos móveis.
* Disponibilidade mínima de 99,9%.

---

# Dependências

* API de Autenticação
* Banco de Dados
* Serviço de Geração de Token JWT
* Serviço de Auditoria
* Dashboard

---

# Definição de Pronto (Definition of Done)

A história será considerada concluída quando:

* Todos os critérios de aceite forem atendidos.
* Todos os casos de teste críticos forem aprovados.
* Não houver defeitos bloqueantes ou críticos.
* Os testes de API forem executados com sucesso.
* As validações em banco de dados estiverem corretas.
* As evidências de teste estiverem anexadas.
* A funcionalidade for homologada pelo Product Owner.

---

# Rastreabilidade

| Artefato             | Referência     |
| -------------------- | -------------- |
| Requisito de Negócio | BR-001 – Login |
| Plano de Testes      | TP-001 – Login |
| Casos de Teste       | TC-LOGIN-*     |
| Cenários BDD         | BDD-LOGIN-*    |
| Testes de API        | API-LOGIN-*    |
| Consultas SQL        | SQL-LOGIN-*    |
| Automação            | AUTO-LOGIN-*   |

---

# Observações

Este documento foi elaborado para compor um portfólio profissional de Qualidade de Software. Os cenários, regras e requisitos representam um projeto fictício, inspirado em práticas utilizadas em equipes ágeis de desenvolvimento de software.
