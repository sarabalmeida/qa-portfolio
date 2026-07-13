# BR-001 – Requisitos de Negócio

## Projeto

**FinControl – Sistema de Gestão Financeira para Pequenas Empresas**

---

# Funcionalidade

## Login

---

# Objetivo

Permitir que usuários autorizados acessem o sistema de forma segura utilizando e-mail e senha.

---

# Justificativa

Garantir que apenas usuários cadastrados tenham acesso às funcionalidades financeiras da plataforma.

---

# Perfis que utilizam

* Administrador
* Financeiro
* Gestor
* Operador

---

# Regras de Negócio

### RN001

O usuário deverá informar e-mail e senha válidos.

---

### RN002

Somente usuários ativos poderão acessar o sistema.

---

### RN003

Após cinco tentativas consecutivas de login com senha incorreta, a conta deverá ser bloqueada por 30 minutos.

---

### RN004

O e-mail deverá ser único no sistema.

---

### RN005

A senha deverá possuir, no mínimo:

* 8 caracteres
* 1 letra maiúscula
* 1 letra minúscula
* 1 número
* 1 caractere especial

---

### RN006

Após autenticação bem-sucedida, o sistema deverá registrar:

* Data e hora do acesso
* Usuário
* Endereço IP
* Dispositivo utilizado

---

### RN007

A sessão deverá expirar automaticamente após 30 minutos de inatividade.

---

### RN008

Ao realizar logout, todos os tokens de autenticação deverão ser invalidados.

---

# Fluxo Principal

1. Usuário acessa a tela de login.
2. Informa e-mail.
3. Informa senha.
4. Clica em **Entrar**.
5. O sistema valida as credenciais.
6. O sistema gera um token de autenticação.
7. O usuário é direcionado ao Dashboard.

---

# Fluxos Alternativos

## FA001 – Senha incorreta

O sistema deverá informar:

> E-mail ou senha inválidos.

---

## FA002 – Usuário inativo

O sistema deverá impedir o acesso.

Mensagem:

> Usuário inativo. Entre em contato com o administrador.

---

## FA003 – Conta bloqueada

Mensagem:

> Sua conta foi temporariamente bloqueada devido ao excesso de tentativas de acesso.

---

## FA004 – Campos obrigatórios

Caso algum campo não seja informado:

* E-mail obrigatório.
* Senha obrigatória.

---

# Critérios de Aceite

A funcionalidade será considerada pronta quando:

* Apenas usuários válidos conseguirem acessar.
* Todas as regras de negócio forem atendidas.
* O token JWT for gerado corretamente.
* O Dashboard for carregado após o login.
* O bloqueio por tentativas funcionar corretamente.
* Os logs de auditoria forem registrados.

---

# Dependências

* API de Autenticação
* Banco de Dados
* Serviço de Geração de Token
* Serviço de Auditoria

---

# Riscos

| Risco                          | Impacto | Mitigação                    |
| ------------------------------ | ------- | ---------------------------- |
| Falha na autenticação          | Alto    | Testes positivos e negativos |
| Token inválido                 | Alto    | Validação automática da API  |
| Sessão expirada incorretamente | Médio   | Testes de timeout            |
| Bloqueio indevido de usuários  | Alto    | Testes de regras de negócio  |

---

# Observações

Este documento representa um exemplo de levantamento de requisitos de negócio para fins de demonstração de práticas de Qualidade de Software. Todo o conteúdo é fictício e não representa projetos reais.
