# ProjectWorkBase (PWB) Database System 📊🚀

A comprehensive project management and issue tracking database system built with MySQL, Node.js, and HTML. This full-stack application demonstrates complete database design lifecycle from ERD modeling to functional web interface implementation.

## 🎯 Project Overview

PWB is a robust software tool designed for project management, issue tracking, and agile software development. It provides a complete solution for teams to manage projects, track issues, collaborate effectively, and deliver high-quality software efficiently.

## ✨ Key Features

### 🔐 Multi-User System
- **Administrator Portal**: Complete system control and configuration
- **Project Manager Portal**: Project oversight and team management  
- **Developer Portal**: Task management and progress tracking
- **Customer Portal**: Issue reporting and feature requests

### 📈 Project Management
- **Project Creation & Management** with customizable templates
- **Team Organization** with sub-teams (AI Team, QA Team, Management Team)
- **Task Assignment** with priorities and due dates
- **Progress Tracking** with visual dashboards
- **Roadmap Planning** for long-term project visualization

### 🐛 Issue Tracking System
- **Comprehensive Issue Management** (Bug, Task, Feature Request, Improvement)
- **Workflow Management** with customizable status tracking
- **Sprint Planning** and agile methodology support
- **Issue Linking** and project artifact connections
- **Priority Levels** (Critical, High, Medium, Low)

### 📊 Advanced Reporting
- **Agile Boards** with drag-and-drop functionality
- **Burndown Charts** for sprint progress
- **Custom Reports** and metrics
- **Dashboard Visualization** for project insights

## 🛠️ Technical Stack

### Frontend
- **HTML5** - Structure and markup
- **CSS3** - Styling and responsive design
- **JavaScript** - Dynamic user interactions
- **Bootstrap** - UI components and responsive framework

### Backend
- **Node.js** - Server-side runtime environment
- **MySQL** - Relational database management
- **SQL** - Database queries and operations

### Database Design
- **Entity Relationship Diagrams (ERD)**
- **Normalized Relational Schema**
- **Comprehensive Constraints Implementation**
- **Optimized Query Performance**

## 🗄️ Database Schema

### Core Entities
- **Users** (Admin, Project Manager, Developer, Customer)
- **Projects** with multiple versions and releases
- **Teams** and sub-teams with role assignments
- **Issues** with detailed tracking and workflow states
- **Sprints** for agile project management
- **Workflows** with customizable status definitions

### Key Relationships
- One-to-Many: Project → Teams → Members
- Many-to-Many: Users ↔ Projects (through team assignments)
- One-to-Many: Projects → Issues → Comments
- Many-to-One: Issues → Workflows → Status

## 🖥️ User Interface Features

### 🔑 Authentication System
- **Role-based Login** with separate portals
- **Secure Authentication** against user database
- **Password Reset** functionality

### 👨‍💼 Administrator Features
- **User Management**: Add/remove users, assign roles
- **Project Creation**: Setup projects with custom templates
- **Team Management**: Create teams and assign members
- **System Configuration**: Access controls and permissions
- **Reporting Dashboard**: System-wide analytics

### 📋 Project Manager Features
- **Project Oversight**: Monitor project progress and status
- **Team Coordination**: Assign tasks and track team performance
- **Issue Management**: Create, assign, and prioritize issues
- **Sprint Planning**: Organize work into manageable sprints
- **Progress Reporting**: Generate detailed project reports

### 👩‍💻 Developer Features
- **Personal Dashboard**: View assigned tasks and projects
- **Issue Updates**: Update status and add comments
- **Time Tracking**: Log work hours and progress
- **Collaboration Tools**: Communicate with team members

### 🤝 Customer Features
- **Issue Reporting**: Submit bugs and feature requests
- **Status Tracking**: Monitor reported issues progress
- **Communication**: Provide additional details and feedback

## 📁 Project Structure

```
PWB-Database-System/
├── database/
│   ├── schema.sql          # Database schema creation
│   ├── data.sql           # Sample data insertion
│   └── constraints.sql    # Integrity constraints
├── frontend/
│   ├── html/             # HTML pages
│   ├── css/              # Stylesheets
│   └── js/               # Client-side JavaScript
├── backend/
│   ├── routes/           # API endpoints
│   ├── models/           # Database models
│   └── config/           # Database configuration
├── docs/
│   ├── ERD.png           # Entity Relationship Diagram
│   ├── schema_diagram.png # Database schema visualization
│   └── project_report.doc # Comprehensive project documentation
└── README.md
```

## 🚀 Getting Started

### Prerequisites
- Node.js (v14 or higher)
- MySQL Server (v8.0 or higher)
- Web browser (Chrome, Firefox, Safari)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/pwb-database-system.git
   cd pwb-database-system
   ```

2. **Setup Database**
   ```sql
   mysql -u root -p < database/schema.sql
   mysql -u root -p < database/data.sql
   mysql -u root -p < database/constraints.sql
   ```

3. **Install Dependencies**
   ```bash
   npm install
   ```

4. **Configure Database Connection**
   ```javascript
   // Update config/database.js with your MySQL credentials
   module.exports = {
     host: 'localhost',
     user: 'your_username',
     password: 'your_password',
     database: 'pwb_system'
   };
   ```

5. **Start the Application**
   ```bash
   npm start
   ```

6. **Access the Application**
   - Open browser to `http://localhost:3000`
   - Login with default credentials (see data.sql)

## 📝 Database Design Process

### 1. Requirements Analysis
- Analyzed PWB system requirements for multi-user project management
- Identified user roles, permissions, and access levels
- Defined core entities and their relationships

### 2. ERD Development
- Created comprehensive Entity Relationship Diagram
- Defined primary keys, foreign keys, and constraints
- Established cardinality relationships between entities

### 3. Schema Mapping
- Mapped ERD to relational database schema
- Applied normalization techniques (1NF, 2NF, 3NF)
- Optimized for query performance and data integrity

### 4. Implementation
- Created MySQL tables with proper constraints
- Implemented referential integrity and business rules
- Added indexes for query optimization

## 🎨 UI/UX Highlights

- **Responsive Design** that works across all devices
- **Intuitive Navigation** with role-based menu systems
- **Interactive Dashboards** with real-time data updates
- **Modern Interface** following current web design trends
- **Accessibility Features** for inclusive user experience

## 📊 Key Deliverables

- ✅ **Complete ERD** with all entities and relationships
- ✅ **Normalized Database Schema** with proper constraints
- ✅ **Functional Web Interface** with role-based access
- ✅ **CRUD Operations** for all major entities
- ✅ **Advanced Reporting** with data visualization
- ✅ **Comprehensive Documentation** with technical details

## 🏆 Project Achievements

This project demonstrates proficiency in:
- **Database Design Methodology** from analysis to implementation
- **Full-Stack Development** with modern web technologies
- **User Experience Design** with intuitive interfaces
- **System Architecture** for scalable applications
- **Project Management Concepts** through practical implementation

## 📈 Evaluation Metrics

- **Database Design (47%)**: ERD, Schema, Constraints, Implementation
- **Frontend Development (25%)**: HTML Interface, Navigation, User Portals
- **Backend Integration (18%)**: Node.js, Database Connectivity, Reports
- **Documentation (10%)**: Comprehensive project report

## 🔮 Future Enhancements

- REST API development for mobile applications
- Real-time notifications using WebSocket
- Advanced analytics and machine learning insights
- Integration with external project management tools
- Enhanced security with JWT authentication

---

*This project showcases end-to-end database system development skills, from conceptual design to functional implementation, demonstrating both technical expertise and practical application of database management principles.*