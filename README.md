# 🚀 TaskFlow – Advanced Java Task Management System

## 📌 Project Overview

TaskFlow is a JIRA-inspired Task Management System developed using Advanced Java technologies. It helps users create, assign, and manage project tasks efficiently.

The application demonstrates Java web development using Servlets, JSP, JDBC, and MySQL, following MVC architecture and the DAO design pattern.

## 🎯 Project Objectives

- Create and manage project tasks.
- Assign tasks to team members.
- Estimate tasks using story points.
- Store task descriptions and details in MySQL.
- View and manage created tasks.
- Organize application code using MVC and DAO patterns.

## 🏗️ Architecture

The application follows **MVC + DAO architecture**.

```text
          USER
            |
            v
        HTML / JSP
            |
            v
         SERVLET
        Controller
            |
            v
        MODEL / DTO
            |
            v
          TaskDAO
            |
            v
           JDBC
            |
            v
          MySQL
```

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Java | Application development |
| Servlets | Request handling |
| JSP | Dynamic web pages |
| HTML | Page structure |
| CSS | User interface styling |
| JDBC | Database connectivity |
| MySQL | Data storage |
| Apache Tomcat | Web application server |
| MVC Architecture | Separation of application layers |
| DAO Pattern | Database operation management |
| Maven | Dependency management |

## ✨ Features

- Create new tasks.
- Assign tasks to team members.
- Add task descriptions.
- Estimate tasks using story points.
- Store task information in MySQL.
- View created tasks.
- Display task information through JSP pages.

## 📂 Project Structure

```text
TaskManagementSystem/
│
├── src/main/java/
│   ├── com.controller/
│   │   └── CreateTaskServlet.java
│   ├── com.dao/
│   │   └── TaskDAO.java
│   ├── com.model/
│   │   └── Tasks.java
│   └── com.util/
│       └── DBConnection.java
│
├── src/main/webapp/
│   ├── create-task.jsp
│   ├── tasks-home.jsp
│   └── css/
│
├── pom.xml
└── README.md
```

*Note: The structure above is an example. Update it if your actual project uses different package or file names.*

## 🗄️ MySQL Database Setup

Create the database:

```sql
CREATE DATABASE taskflow;
USE taskflow;
```

Create the tasks table:

```sql
CREATE TABLE tasks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    task_name VARCHAR(150) NOT NULL,
    task_description VARCHAR(500),
    story_points INT,
    assigned_to VARCHAR(100)
);
```

## 🔌 Database Configuration

Configure your MySQL connection in `DBConnection.java`.

Example JDBC URL:

```java
jdbc:mysql://localhost:3306/taskflow
```

Update the database username and password according to your local MySQL configuration.

## 🔄 Task Creation Workflow

```text
User
  |
  v
Create Task Form (JSP)
  |
  v
CreateTaskServlet
  |
  v
Tasks Model
  |
  v
TaskDAO
  |
  v
JDBC Connection
  |
  v
MySQL Database
  |
  v
Task Saved Successfully
```

## 🧩 MVC and DAO Design Patterns

**MVC Architecture**
- **Model:** Represents task data.
- **View:** Displays forms and task information using JSP.
- **Controller:** Handles HTTP requests using Servlets.

**DAO Pattern**
- `TaskDAO.java` handles database operations.
- JDBC connects the application to MySQL.
- Separ
