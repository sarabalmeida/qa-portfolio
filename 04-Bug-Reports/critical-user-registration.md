# 🐞 Bug Report – Cadastro de Usuário permite CPF duplicado

## Informações Gerais

| Campo         | Valor                 |
| ------------- | --------------------- |
| ID            | BUG-001               |
| Projeto       | Sistema Web (Exemplo) |
| Módulo        | Cadastro de Usuário   |
| Tipo          | Funcional             |
| Severidade    | Crítica               |
| Prioridade    | Alta                  |
| Status        | Aberto                |
| Reportado por | Sara Borges Almeida   |
| Data          | 13/07/2026            |
| Ambiente      | Homologação           |

---

# Resumo

O sistema permite o cadastro de múltiplos usuários utilizando o mesmo CPF, contrariando a regra de negócio de unicidade do documento.

---

# Pré-condições

* Usuário já cadastrado com o CPF **123.456.789-00**.
* Ambiente de homologação disponível.
* Banco de dados acessível.

---

# Passos para reproduzir

1. Acessar a tela **Cadastro de Usuário**.
2. Informar um novo nome.
3. Informar o CPF **123.456.789-00**.
4. Informar um e-mail diferente.
5. Preencher uma senha válida.
6. Confirmar a senha.
7. Clicar em **Cadastrar**.

---

# Resultado Obtido

O sistema conclui o cadastro com sucesso, permitindo a existência de dois usuários com o mesmo CPF.

---

# Resultado Esperado

O sistema deve impedir o cadastro e apresentar uma mensagem informando que o CPF já está cadastrado.

Exemplo:

> **CPF já cadastrado. Utilize outro documento ou recupere sua conta.**

---

# Impacto

Este defeito compromete a integridade dos dados, podendo gerar duplicidade de registros, inconsistências em processos de autenticação e problemas em integrações com outros sistemas.

---

# Evidências

### Capturas de tela

* Tela de cadastro preenchida.
* Mensagem apresentada pelo sistema.
* Consulta ao banco de dados demonstrando registros duplicados.

### Consulta SQL para validação

```sql
SELECT cpf,
       COUNT(*)
FROM usuarios
GROUP BY cpf
HAVING COUNT(*) > 1;
```

Resultado esperado da consulta:

Nenhum registro retornado.

Resultado encontrado:

| CPF         | Quantidade |
| ----------- | ---------: |
| 12345678900 |          2 |

---

# Possível Causa

A validação de unicidade do CPF não está sendo realizada na camada de negócio ou no banco de dados antes da persistência das informações.

---

# Critério de Correção

O defeito será considerado corrigido quando:

* Não for possível cadastrar um CPF já existente.
* O sistema apresentar mensagem clara ao usuário.
* Nenhum registro duplicado for persistido.
* Todos os testes de regressão relacionados ao cadastro forem aprovados.

---

# Casos de Teste Relacionados

* CT-001 – Cadastro realizado com sucesso
* CT-005 – CPF duplicado
* CT-023 – Persistência dos dados
* CT-024 – Validação da API

---

# Histórico

| Versão | Data       | Autor               | Observação           |
| ------ | ---------- | ------------------- | -------------------- |
| 1.0    | 13/07/2026 | Sara Borges Almeida | Criação do relatório |
