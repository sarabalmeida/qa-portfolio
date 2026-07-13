# ✅ Casos de Teste – Cadastro de Usuário

## Informações

| Campo          | Valor                 |
| -------------- | --------------------- |
| Funcionalidade | Cadastro de Usuário   |
| Projeto        | Sistema Web (Exemplo) |
| Autor          | Sara Borges Almeida   |
| Versão         | 1.0                   |

---

# Objetivo

Validar o correto funcionamento da funcionalidade de cadastro de usuários, garantindo que as regras de negócio sejam atendidas, que os dados sejam persistidos corretamente e que mensagens adequadas sejam apresentadas ao usuário.

---

## CT-001 – Cadastro realizado com sucesso

**Objetivo**

Validar que um usuário possa ser cadastrado utilizando informações válidas.

**Pré-condição**

Usuário não cadastrado.

**Passos**

1. Acessar a tela de cadastro.
2. Informar nome válido.
3. Informar CPF válido.
4. Informar e-mail válido.
5. Informar senha válida.
6. Confirmar senha.
7. Clicar em **Cadastrar**.

**Resultado Esperado**

* Cadastro realizado com sucesso.
* Mensagem de confirmação apresentada.
* Registro salvo no banco de dados.

---

## CT-002 – Nome obrigatório

**Passos**

Deixar o campo Nome vazio.

**Resultado Esperado**

Mensagem:

> Nome é obrigatório.

---

## CT-003 – CPF obrigatório

Resultado esperado:

> CPF é obrigatório.

---

## CT-004 – CPF inválido

Inserir:

11111111111

Resultado esperado:

Sistema deve impedir o cadastro.

---

## CT-005 – CPF duplicado

Cadastrar utilizando CPF já existente.

Resultado esperado:

Mensagem:

> CPF já cadastrado.

---

## CT-006 – E-mail obrigatório

Resultado esperado

Campo obrigatório.

---

## CT-007 – E-mail inválido

Exemplo

teste@

Resultado esperado

Sistema não permite prosseguir.

---

## CT-008 – E-mail duplicado

Resultado esperado

Sistema informa que já existe cadastro.

---

## CT-009 – Senha obrigatória

Resultado esperado

Campo obrigatório.

---

## CT-010 – Senha muito curta

Senha:

123

Resultado esperado

Sistema informa quantidade mínima de caracteres.

---

## CT-011 – Senha fraca

Senha

abcdef

Resultado esperado

Sistema solicita senha mais forte.

---

## CT-012 – Senhas diferentes

Senha

Senha123

Confirmar

Senha456

Resultado esperado

Mensagem

As senhas não conferem.

---

## CT-013 – Espaços em branco

Inserir espaços antes e depois do nome.

Resultado esperado

Sistema remove espaços desnecessários.

---

## CT-014 – Caracteres especiais

Nome

João @@@

Resultado esperado

Sistema valida conforme regra de negócio.

---

## CT-015 – Limite máximo do Nome

Inserir nome com 250 caracteres.

Resultado esperado

Sistema respeita tamanho máximo.

---

## CT-016 – Campo Nome aceita números?

Nome:

Maria123

Resultado esperado

Sistema valida conforme regra.

---

## CT-017 – CPF com máscara

Resultado esperado

Sistema aceita:

111.222.333-44

---

## CT-018 – CPF sem máscara

Resultado esperado

Sistema aceita:

11122233344

---

## CT-019 – Cadastro duplicado

Executar duas vezes.

Resultado esperado

Segundo cadastro rejeitado.

---

## CT-020 – Refresh durante cadastro

Atualizar página antes de salvar.

Resultado esperado

Sistema mantém comportamento esperado conforme requisito.

---

## CT-021 – Cancelar cadastro

Resultado esperado

Usuário retorna para tela inicial.

---

## CT-022 – Tempo de resposta

Resultado esperado

Cadastro realizado em menos de 2 segundos.

---

## CT-023 – Persistência no Banco

Após cadastro:

Executar consulta SQL.

Resultado esperado

Registro gravado corretamente.

---

## CT-024 – Validação da API

Após cadastro

Validar resposta da API.

Esperado

Status 201 Created.

---

## CT-025 – Compatibilidade

Executar no:

* Chrome
* Edge
* Firefox

Resultado esperado

Mesmo comportamento em todos os navegadores.

---

# Critérios de Aprovação

A funcionalidade será considerada aprovada quando:

* Todos os casos críticos forem aprovados.
* Não existirem defeitos bloqueantes.
* As regras de negócio forem atendidas.
* A persistência dos dados for validada.
* A API responder corretamente.
* Os testes forem executados com sucesso nos navegadores suportados.

---

# Observações

Este documento tem finalidade demonstrativa e representa um exemplo de documentação profissional utilizada em atividades de Qualidade de Software, preservando a confidencialidade de projetos reais.
