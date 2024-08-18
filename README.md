# Digital-Skola-FTDE-Mini-Project2
## Deskripsi Mini-Project2
Bagian dari tugas Fast-Track homework, yang merupakan tugas individual. Membuat ELT dari data pipeline proses menggunakan dbt/dbt-core.

## Data stack
- Postgres (data warehouse)
- Dbt/Dbt-core
- Docker/Docker desktop/WSL2+Ubuntu+Docker
- Dbeaver

##  Simple Project Architecture
Berikut ini merupakan ilustrasi dari project yang dibuat.

## Getting Started
1. Install dbt-core [Check dbt official web here](https://docs.getdbt.com/docs/installation)
2. Install dbt-postgres
3. Clone this repository
4. Change to the project directory 
   ```
   cd Digital-Skola-FTDE-Mini-Project2
   ```
5. Start docker engine (docker desktop)
6. Run this docker command (I'm assumed you already have build docker images for postgres)
   ```
   docker run --name postgres-test -e PGDATA=/var/lib/postgresql/data -e POSTGRES_PASSWORD=postgres -e POSTGRES_USER=postgres -e POSTGRES_DB=postgres -p 5433:5432 -v ./dvdrental:/dvdrental postgres-test:12
   ```
   <br>
   ```
   docker exec -it postgres-test bash
   ```
   <br>
   ```
   docker cp dvdrental postgres-test:12/
   ```
   <br>
   ```
   docker run --name postgres-test -e PGDATA=/var/lib/postgresql/data -e POSTGRES_PASSWORD=postgres -e POSTGRES_USER=postgres -e POSTGRES_DB=postgres -p 5433:5432 -v ./dvdrental:/dvdrental -v dbt-postgres:/var/lib/postgresql/data -d postgres-test:12
   ```
   <br>
   ```
   docker start postgres-test/59bf...
   ```
7. To Ensure your project is setup correct, run this command on terminal:
   ```
   dbt debug
   ```
8. Run the models:
   ```
   dbt run
   ```
9. Generate documentation for the project
   ```
   dbt docs generate
   ```
10. View the documentation on web-based, run this command on terminal:
   ```
   dbt docs serve
   ```

## Lineage Graph

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices