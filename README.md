![image](https://github.com/vnobets7/Digital-Skola-FTDE-Mini-Project2/blob/main/images/dbt-signature_tm.png)

# Digital-Skola-FTDE-Mini-Project2
## Deskripsi Mini-Project2
Bagian dari tugas Fast-Track homework, yang merupakan tugas individual. Membuat (E)LT dari data pipeline proses menggunakan dbt/dbt-core.

## Data stack
- Postgres (data warehouse)
- Dbt/Dbt-core
- Docker/Docker desktop/WSL2+Ubuntu+Docker
- Dbeaver

##  Simple Project Architecture
Berikut ini merupakan ilustrasi dari project yang dibuat. <br>
![Project Architecture](https://github.com/vnobets7/Digital-Skola-FTDE-Mini-Project2/blob/main/images/Project-architecture.png)

## Getting Started
1. Install dbt-core [Check dbt official web here](https://docs.getdbt.com/docs/installation)
2. Install dbt-postgres [Check dbt official web here](https://docs.getdbt.com/docs/core/pip-install)
3. Clone this repository
4. Change to the project directory 
   ```
   cd Digital-Skola-FTDE-Mini-Project2
   ```
5. Start docker engine (docker desktop)
6. Run this docker command (I'm assumed you already have build docker images for postgres)
   ```
   docker run --name postgres-test -e PGDATA=/var/lib/postgresql/data -e POSTGRES_PASSWORD=.... -e POSTGRES_USER=.... -e POSTGRES_DB=.... -p 5433:5432 -v ./dvdrental:/dvdrental postgres-test:12
   ----------------------------
   docker exec -it postgres-test bash
   ----------------------------
   docker cp dvdrental postgres-test:12/
   ----------------------------
   docker run --name postgres-test -e PGDATA=/var/lib/postgresql/data -e POSTGRES_PASSWORD=.... -e POSTGRES_USER=.... -e POSTGRES_DB=... -p 5433:5432 -v ./dvdrental:/dvdrental -v dbt-postgres:/var/lib/postgresql/data -d postgres-test:12
   ----------------------------
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
### Data graph untuk data mart -> total_revenue
![total_revenue](https://github.com/vnobets7/Digital-Skola-FTDE-Mini-Project2/blob/main/images/total_revenue_data-lineage.PNG)
### Data graph untuk data mart -> best_selling_film
![best_selling_film](https://github.com/vnobets7/Digital-Skola-FTDE-Mini-Project2/blob/main/images/best_selling_film_data-lineage.PNG)
### Data graph untuk data mart -> most_frequent_actor
![most_frequent_actor](https://github.com/vnobets7/Digital-Skola-FTDE-Mini-Project2/blob/main/images/most_frequent_actor_data-lineage.PNG)

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
