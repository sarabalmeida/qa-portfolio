# Plano de Testes – Cadastro de Usuário

## Informações do Documento

| Campo          | Valor                              |
| -------------- | ---------------------------------- |
| Projeto        | Portal Web de Cadastro de Clientes |
| Funcionalidade | Cadastro de Usuário                |
| Versão         | 1.0                                |
| Responsável    | Sara Borges Almeida                |
| Data           | Julho/2026                         |
| Status         | Em elaboração                      |

---

# 1. Objetivo

Este plano de testes tem como objetivo definir a estratégia de validação da funcionalidade de Cadastro de Usuário, garantindo que os requisitos funcionais e não funcionais sejam atendidos antes da disponibilização da funcionalidade em ambiente de produção.

---

# 2. Escopo

Serão validados os seguintes comportamentos:

* Cadastro de novos usuários.
* Campos obrigatórios.
* Campos opcionais.
* Validação de CPF.
* Validação de e-mail.
* Validação de senha.
* Confirmação de senha.
* Mensagens de erro.
* Mensagens de sucesso.
* Persistência dos dados.
* Integração com banco de dados.
* Integração com API de cadastro.

---

# 3. Fora do Escopo

Não fazem parte deste plano:

* Recuperação de senha.
* Login.
* Alteração cadastral.
* Exclusão de usuários.
* Permissões administrativas.

---

# 4. Requisitos

### Funcionais

* RF001 – Permitir cadastro de novos usuários.
* RF002 – Validar CPF.
* RF003 – Validar formato do e-mail.
* RF004 – Confirmar senha.
* RF005 – Impedir duplicidade de CPF.
* RF006 – Impedir duplicidade de e-mail.

### Não Funcionais

* Tempo de resposta inferior a 2 segundos para o cadastro.
* Comunicação via HTTPS.
* Compatibilidade com navegadores modernos.

---

# 5. Tipos de Testes

Serão executados:

* Testes Funcionais
* Testes Exploratórios
* Testes de Regressão
* Testes de Integração
* Testes de API
* Validação de Banco de Dados
* Testes de Usabilidade
* Smoke Test

---

# 6. Ambiente de Testes

| Item                | Valor                        |
| ------------------- | ---------------------------- |
| Ambiente            | Homologação                  |
| Sistema Operacional | Windows 11                   |
| Navegadores         | Chrome, Edge e Firefox       |
| Banco de Dados      | PostgreSQL                   |
| API                 | REST                         |
| Ferramentas         | Jira, Xray, Postman, Swagger |

---

# 7. Massa de Testes

Serão utilizadas massas contendo:

* CPF válido.
* CPF inválido.
* CPF já cadastrado.
* E-mail válido.
* E-mail inválido.
* E-mail duplicado.
* Senha forte.
* Senha fraca.
* Campos vazios.
* Caracteres especiais.
* Limites mínimo e máximo dos campos.

---

# 8. Critérios de Entrada

A execução dos testes será iniciada quando:

* Desenvolvimento concluído.
* Build disponível.
* Ambiente estável.
* História aprovada.
* Requisitos documentados.

---

# 9. Critérios de Saída

Os testes serão considerados concluídos quando:

* Todos os casos de teste críticos forem executados.
* Não existirem defeitos críticos ou bloqueantes.
* Bugs de alta prioridade estiverem tratados ou formalmente aceitos.
* Evidências forem registradas.
* Relatório final de execução for disponibilizado.

---

# 10. Riscos

| Risco                         | Impacto | Mitigação                                |
| ----------------------------- | ------- | ---------------------------------------- |
| Ambiente indisponível         | Alto    | Reagendar execução após estabilização    |
| Massa de testes inconsistente | Médio   | Preparar massa previamente               |
| Alteração de requisitos       | Alto    | Revisar casos de teste antes da execução |

---

# 11. Evidências

Durante a execução serão registradas:

* Capturas de tela.
* Logs.
* Respostas das APIs.
* Evidências em PDF.
* Evidências anexadas ao Jira/Xray.

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

# 13. Aprovação

A funcionalidade será considerada apta para publicação quando:

* Todos os critérios de saída forem atendidos.
* Os testes críticos estiverem aprovados.
* O Product Owner aprovar a entrega.
* O time validar a ausência de impedimentos para a liberação.

---

## Histórico de Revisões

| Versão | Data       | Responsável         | Descrição            |
| ------ | ---------- | ------------------- | -------------------- |
| 1.0    | Julho/2026 | Sara Borges Almeida | Criação do documento |
