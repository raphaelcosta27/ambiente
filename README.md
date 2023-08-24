<h1 align="center">🚀 Ambiente PHP + SQL Server + MySQL + Node.js + Redis com Docker 🚀</h1>

<p align="center">
    <img src="URL_DA_IMAGEM_DO_PROJETO" alt="Imagem do Projeto" width="300">
</p>

<p align="center">
    Um ambiente Docker robusto para acelerar seu desenvolvimento!
</p>

<p align="center">
  <a href="#features">Recursos</a> •
  <a href="#setup">Configuração</a> •
  <a href="#usage">Uso</a> •
  <a href="#contribute">Contribuição</a>
</p>

---

## 🌟 Recursos <a name="features"></a>

- **PHP**: Versão 8 com extensões populares e Xdebug para depuração.
- **Apache**: Configurado com SSL e prevenção de listagem de diretório.
- **SQL Server**: Versão 2019.
- **MySQL**: Última versão disponível.
- **Node.js**: Configuração isolada para desenvolvimento front-end com React.
- **Redis**: Cache de alta performance.

## ⚙ Configuração <a name="setup"></a>

### Pré-requisitos:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Passos:

1. Clone este repositório:
    ```bash
    git clone https://github.com/seu-usuario/seu-repositorio.git
    cd seu-repositorio
    ```

2. Inicie os containers:
    ```bash
    docker-compose up -d
    ```

## 🚀 Uso <a name="usage"></a>

Acesse sua aplicação PHP via `http://meusite.local` ou `https://meusite.local`. Para a aplicação React, visite `http://localhost:3000`.

As configurações padrão do banco de dados são:

- **SQL Server**:
  - Usuário: `mssql_user`
  - Senha: `mssql_user_password`
  - DB: `mssql_database_name`

- **MySQL**:
  - Usuário: `mysql_user`
  - Senha: `mysql_user_password`
  - DB: `mysql_database_name`

## 💡 Contribuição <a name="contribute"></a>

Contribuições são sempre bem-vindas! Sinta-se à vontade para abrir um issue ou pull request a qualquer momento.

---

Lembre-se de:

- **Substituir** `URL_DA_IMAGEM_DO_PROJETO` por uma imagem real que você deseja exibir para o seu projeto (logo, screenshot, etc.).
- **Customizar** qualquer URL ou informação específica conforme necessário.
- **Expandir** ou **modificar** este `README` conforme as especificidades do seu projeto.
