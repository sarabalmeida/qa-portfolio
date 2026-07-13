# 📋 TP-001 – Plano de Testes | Funcionalidade de Login

## Projeto

**FinControl – Sistema de Gestão Financeira para Pequenas Empresas**

---

# Informações do Documento

| Campo          | Valor               |
| -------------- | ------------------- |
| Documento      | TP-001              |
| Funcionalidade | Login               |
| Autor          | Sara Borges Almeida |
| Versão         | 1.0                 |
| Data           | Julho/2026          |
| Status         | Em elaboração       |

---

# 1. Objetivo

Definir a estratégia de testes para a funcionalidade de Login, garantindo que apenas usuários autorizados possam acessar o sistema com segurança, conforme os requisitos funcionais e não funcionais definidos.

---

# 2. Escopo

Estão contemplados neste plano:

* Login com credenciais válidas
* Login com senha inválida
* Login com usuário inexistente
* Usuário inativo
* Bloqueio após tentativas consecutivas
* Logout
* Expiração de sessão
* Auditoria de acesso
* Geração de Token JWT

---

# 3. Fora do Escopo

Não fazem parte deste plano:

* Cadastro de usuários
* Recuperação de senha
* Alteração de senha
* Autenticação em dois fatores (MFA)
* Login Social (Google/Microsoft)

---

# 4. Artefatos Relacionados

| Documento            | Referência  |
| -------------------- | ----------- |
| Requisito de Negócio | BR-001      |
| História de Usuário  | US-001      |
| Casos de Teste       | TC-LOGIN-*  |
| Cenários BDD         | BDD-LOGIN-* |
| Testes de API        | API-LOGIN-* |

---

# 5. Estratégia de Testes

Serão executados os seguintes tipos de teste:

* Testes Funcionais
* Testes Exploratórios
* Testes de Integração
* Testes de API
* Testes de Regressão
* Testes de Segurança (básicos)
* Testes de Compatibilidade
* Testes de Usabilidade
* Validação em Banco de Dados

---

# 6. Ambiente de Testes

| Item                | Configuração                      |
| ------------------- | --------------------------------- |
| Ambiente            | Homologação                       |
| Sistema Operacional | Windows 11                        |
| Navegadores         | Chrome, Edge e Firefox            |
| API                 | REST                              |
| Banco de Dados      | PostgreSQL                        |
| Ferramentas         | Jira, Xray, Postman, Swagger, Git |

---

# 7. Massa de Testes

Serão preparados os seguintes usuários:

| Cenário               | Massa                                                                       |
| --------------------- | --------------------------------------------------------------------------- |
| Usuário ativo         | [usuario.ativo@fincontrol.com](mailto:usuario.ativo@fincontrol.com)         |
| Usuário inativo       | [usuario.inativo@fincontrol.com](mailto:usuario.inativo@fincontrol.com)     |
| Usuário administrador | [admin@fincontrol.com](mailto:admin@fincontrol.com)                         |
| Usuário bloqueado     | [usuario.bloqueado@fincontrol.com](mailto:usuario.bloqueado@fincontrol.com) |
| Usuário inexistente   | [naoexiste@fincontrol.com](mailto:naoexiste@fincontrol.com)                 |

---

# 8. Critérios de Entrada

Os testes poderão ser iniciados quando:

* História de usuário aprovada.
* Build disponibilizada.
* Ambiente estável.
* Banco atualizado.
* APIs disponíveis.
* Massa de testes preparada.

---

# 9. Critérios de Saída

Os testes serão encerrados quando:

* 100% dos casos críticos forem executados.
* Não existirem defeitos críticos ou bloqueantes.
* Evidências estiverem anexadas.
* Casos de teste atualizados.
* Aprovação do Product Owner.

---

# 10. Riscos

| Risco                             | Impacto | Mitigação                             |
| --------------------------------- | ------- | ------------------------------------- |
| API indisponível                  | Alto    | Validar ambiente antes da execução    |
| Banco inconsistente               | Alto    | Restaurar massa de testes             |
| Token expirando antes do esperado | Médio   | Executar testes específicos de sessão |
| Ambiente instável                 | Alto    | Reagendar execução                    |

---

# 11. Critérios de Aprovação

A funcionalidade será considerada aprovada quando:

* Login válido funcionar corretamente.
* Usuários inválidos forem rejeitados.
* Usuários inativos não conseguirem acessar.
* Bloqueio por tentativas funcionar.
* Token JWT for gerado corretamente.
* Logout invalidar a sessão.
* Logs de auditoria forem registrados.

---

# 12. Ferramentas Utilizadas

* Jira
* Xray
* Confluence
* Postman
* Swagger
* PostgreSQL
* Git
* GitHub

---

# 13. Métricas

Serão acompanhados os seguintes indicadores:

* Casos de teste planejados.
* Casos executados.
* Casos aprovados.
* Casos reprovados.
* Bugs por severidade.
* Taxa de aprovação.
* Cobertura de testes.
* Tempo médio de execução.

---

# 14. Cronograma

| Etapa                      | Status |
| -------------------------- | ------ |
| Planejamento               | ✅      |
| Escrita dos Casos de Teste | ⏳      |
| Preparação da Massa        | ⏳      |
| Execução                   | ⏳      |
| Regressão                  | ⏳      |
| Homologação                | ⏳      |

---

# 15. Aprovação

| Papel         | Responsável         |
| ------------- | ------------------- |
| Product Owner | A definir           |
| QA            | Sara Borges Almeida |
| Tech Lead     | A definir           |

---

# Histórico de Revisões

| Versão | Data       | Autor               | Descrição            |
| ------ | ---------- | ------------------- | -------------------- |
| 1.0    | Julho/2026 | Sara Borges Almeida | Criação do documento |
