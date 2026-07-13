# 🎯 TS-001 – Estratégia de Testes | Login

## Projeto

**FinControl – Sistema de Gestão Financeira para Pequenas Empresas**

---

# Informações do Documento

| Campo          | Valor               |
| -------------- | ------------------- |
| Documento      | TS-001              |
| Funcionalidade | Login               |
| Autor          | Sara Borges Almeida |
| Versão         | 1.0                 |
| Data           | Julho/2026          |

---

# 1. Objetivo

Definir a abordagem de testes para a funcionalidade de Login, garantindo cobertura adequada dos requisitos de negócio, regras funcionais, segurança, integração e experiência do usuário.

---

# 2. Escopo

A estratégia contempla:

* Interface Web
* API de autenticação
* Banco de dados
* Integração com serviço de geração de token
* Registro de auditoria
* Controle de sessão

---

# 3. Objetivos da Qualidade

A funcionalidade deverá garantir:

* Autenticação segura
* Proteção contra acessos indevidos
* Integridade dos dados
* Confiabilidade das respostas da API
* Boa experiência para o usuário
* Registro adequado das auditorias

---

# 4. Abordagem de Testes

## Testes Funcionais

Validar todas as regras de negócio relacionadas ao login.

Exemplos:

* Login válido
* Senha incorreta
* Usuário inexistente
* Usuário bloqueado
* Logout
* Sessão expirada

---

## Testes Exploratórios

Explorar comportamentos não previstos na especificação, buscando falhas relacionadas à navegação, usabilidade e validações inesperadas.

---

## Testes de API

Validar:

* Status HTTP
* Corpo da resposta
* Token JWT
* Headers
* Tempo de resposta
* Mensagens de erro

---

## Validação em Banco de Dados

Confirmar:

* Registro do último acesso
* Atualização da data de login
* Persistência dos logs
* Integridade das informações

---

## Testes de Segurança (Básicos)

Verificar cenários como:

* SQL Injection
* XSS (Cross-Site Scripting)
* Força bruta (bloqueio após tentativas)
* Uso de token inválido ou expirado

---

## Testes de Compatibilidade

Executar os principais cenários nos navegadores:

* Google Chrome
* Microsoft Edge
* Mozilla Firefox

---

# 5. Priorização dos Testes

| Prioridade | Exemplos                                        |
| ---------- | ----------------------------------------------- |
| Alta       | Login válido, senha inválida, usuário bloqueado |
| Média      | Expiração de sessão, logout                     |
| Baixa      | Mensagens de interface e ajustes visuais        |

---

# 6. Critérios de Cobertura

A estratégia busca garantir cobertura para:

* Fluxos principais
* Fluxos alternativos
* Regras de negócio
* Tratamento de erros
* Integrações
* Persistência dos dados
* Segurança básica

---

# 7. Critérios de Suspensão

A execução dos testes poderá ser interrompida caso:

* O ambiente esteja indisponível.
* A API não responda.
* O banco de dados esteja inconsistente.
* O build apresente falhas críticas que impeçam a execução.

---

# 8. Critérios para Retomada

Os testes serão retomados após:

* Correção do ambiente.
* Disponibilização de novo build.
* Validação técnica da estabilidade.
* Atualização da massa de testes.

---

# 9. Ferramentas

* Jira
* Xray
* Confluence
* Postman
* Swagger
* PostgreSQL
* Git
* GitHub

---

# 10. Riscos

| Risco                         | Probabilidade | Impacto | Mitigação                                          |
| ----------------------------- | ------------- | ------- | -------------------------------------------------- |
| API indisponível              | Média         | Alto    | Validar ambiente antes da execução                 |
| Falha na autenticação         | Baixa         | Alto    | Executar testes positivos e negativos              |
| Sessão expirar antes do tempo | Média         | Médio   | Testes específicos de timeout                      |
| Alteração de requisitos       | Média         | Alto    | Revisar casos de teste e matriz de rastreabilidade |

---

# 11. Indicadores de Qualidade

Serão acompanhados:

* Percentual de casos executados
* Percentual de aprovação
* Cobertura de requisitos
* Quantidade de defeitos por severidade
* Tempo médio de execução
* Taxa de retrabalho

---

# 12. Critérios de Sucesso

A estratégia será considerada bem-sucedida quando:

* Todos os critérios de aceite forem atendidos.
* Não existirem defeitos críticos ou bloqueantes.
* A cobertura planejada for alcançada.
* As evidências estiverem registradas.
* A funcionalidade for aprovada para homologação.

---

# Referências

* BR-001 – Requisitos de Negócio
* US-001 – História de Usuário
* TP-001 – Plano de Testes
* TC-LOGIN-* – Casos de Teste
* API-LOGIN-* – Testes de API
* SQL-LOGIN-* – Validações SQL
