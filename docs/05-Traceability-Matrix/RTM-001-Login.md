# 📊 RTM-001 – Matriz de Rastreabilidade

## Projeto

**FinControl – Sistema de Gestão Financeira para Pequenas Empresas**

---

# Objetivo

Garantir que todos os requisitos da funcionalidade de Login possuam cobertura adequada por meio de casos de teste, cenários BDD, testes de API e automação.

---

# Visão Geral

A matriz de rastreabilidade permite acompanhar a relação entre os requisitos de negócio e os artefatos de teste, assegurando que nenhuma funcionalidade crítica fique sem validação.

---

# Matriz de Rastreabilidade

| Requisito | Descrição                      | Caso de Teste | BDD           | API           | SQL           | Automação      | Status |
| --------- | ------------------------------ | ------------- | ------------- | ------------- | ------------- | -------------- | ------ |
| BR-001    | Login com sucesso              | TC-LOGIN-001  | BDD-LOGIN-001 | API-LOGIN-001 | SQL-LOGIN-001 | AUTO-LOGIN-001 | ✅      |
| BR-002    | Senha inválida                 | TC-LOGIN-002  | BDD-LOGIN-002 | API-LOGIN-002 | -             | AUTO-LOGIN-002 | ✅      |
| BR-003    | Usuário inexistente            | TC-LOGIN-003  | BDD-LOGIN-003 | API-LOGIN-003 | -             | AUTO-LOGIN-003 | ✅      |
| BR-004    | Usuário inativo                | TC-LOGIN-004  | BDD-LOGIN-004 | API-LOGIN-004 | SQL-LOGIN-002 | AUTO-LOGIN-004 | ✅      |
| BR-005    | Bloqueio após cinco tentativas | TC-LOGIN-005  | BDD-LOGIN-005 | API-LOGIN-005 | SQL-LOGIN-003 | AUTO-LOGIN-005 | ⏳      |
| BR-006    | Expiração da sessão            | TC-LOGIN-006  | BDD-LOGIN-006 | API-LOGIN-006 | -             | AUTO-LOGIN-006 | ⏳      |
| BR-007    | Logout                         | TC-LOGIN-007  | BDD-LOGIN-007 | API-LOGIN-007 | -             | AUTO-LOGIN-007 | ⏳      |
| BR-008    | Registro de auditoria          | TC-LOGIN-008  | -             | API-LOGIN-008 | SQL-LOGIN-004 | -              | ⏳      |

---

# Cobertura dos Requisitos

| Item                  | Quantidade |
| --------------------- | ---------: |
| Requisitos de Negócio |          8 |
| Casos de Teste        |          8 |
| Cenários BDD          |          7 |
| Testes de API         |          8 |
| Validações SQL        |          4 |
| Casos Automatizados   |          7 |

---

# Cobertura por Tipo de Teste

| Tipo            | Cobertura   |
| --------------- | ----------- |
| Funcional       | 100%        |
| API             | 100%        |
| Banco de Dados  | 50%         |
| Automação       | Em evolução |
| Segurança       | Parcial     |
| Compatibilidade | Planejada   |

---

# Indicadores

## Cobertura Funcional

100%

---

## Cobertura de API

100%

---

## Cobertura de Banco

50%

---

## Cobertura Automatizada

Em evolução.

---

# Benefícios da Matriz

* Garantir cobertura dos requisitos.
* Identificar rapidamente funcionalidades sem testes.
* Facilitar auditorias.
* Apoiar planejamento de regressão.
* Melhorar a comunicação entre QA, Desenvolvimento e Produto.

---

# Histórico de Revisões

| Versão | Data       | Autor               | Alteração         |
| ------ | ---------- | ------------------- | ----------------- |
| 1.0    | Julho/2026 | Sara Borges Almeida | Criação da matriz |
