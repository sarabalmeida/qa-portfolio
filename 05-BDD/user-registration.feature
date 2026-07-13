# language: pt

Funcionalidade: Cadastro de Usuário

Como um visitante do sistema

Quero realizar meu cadastro

Para acessar as funcionalidades disponíveis.

Background:
Dado que o usuário esteja na tela de cadastro

@positivo
Cenário: Cadastro realizado com sucesso

Quando informar um nome válido
E informar um CPF válido
E informar um e-mail válido
E informar uma senha válida
E confirmar a senha
E clicar no botão "Cadastrar"

Então o sistema deve realizar o cadastro
E apresentar a mensagem "Cadastro realizado com sucesso."

---

@obrigatorio
Cenário: Nome obrigatório

Quando deixar o campo Nome vazio
E preencher os demais campos corretamente
E clicar em "Cadastrar"

Então o sistema deve apresentar a mensagem

"Nome é obrigatório."

---

@cpf
Cenário: CPF inválido

Quando informar um CPF inválido
E preencher os demais campos corretamente

Então o sistema deve impedir o cadastro
E informar que o CPF é inválido.

---

@cpf
Cenário: CPF duplicado

Dado que exista um usuário cadastrado com o CPF informado

Quando tentar realizar um novo cadastro

Então o sistema deve impedir o cadastro
E apresentar a mensagem

"CPF já cadastrado."

---

@email
Cenário: Email inválido

Quando informar um email fora do padrão

Então o sistema deve apresentar mensagem de erro.

---

@email
Cenário: Email duplicado

Dado que o email já exista

Quando tentar realizar um novo cadastro

Então o sistema deve impedir o cadastro.

---

@senha
Cenário: Senhas diferentes

Quando informar senhas diferentes

Então o sistema deve informar

"As senhas não conferem."

---

@api
Cenário: Cadastro realizado via API

Quando enviar uma requisição POST válida

Então a API deve responder com status 201

E retornar o identificador do usuário criado.

---

@performance
Cenário: Tempo de resposta

Quando realizar um cadastro válido

Então o tempo de resposta deve ser inferior a 2 segundos.

---

@seguranca
Cenário: Tentativa de SQL Injection

Quando informar caracteres maliciosos no campo e-mail

Então o sistema deve rejeitar a requisição
E registrar o evento para auditoria.
