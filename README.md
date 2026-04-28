# Privacy Characterization and Quantification

A Java web application for managing medical data privacy and implementing privacy-preserving techniques in healthcare datasets. The system provides role-based access for administrators, doctors, analysts, and patients to manage and analyze medical data while maintaining privacy standards.

## Features

- **Multi-role Authentication System**
  - Admin: System administration and user management
  - Doctor: Patient data entry and management
  - Analyst: Data analysis and privacy metrics
  - Patient: View personal medical data

- **Privacy-Preserving Data Management**
  - L-diversity implementation
  - Data anonymization techniques
  - Privacy characterization and quantification
  - Secure patient data handling

- **Medical Data Management**
  - Patient registration and data entry
  - Medical record management
  - Data visualization and reporting
  - Search and filtering capabilities

## Technology Stack

- **Backend**: Java (JDK 1.8)
- **Web Framework**: JSP/Servlets
- **Database**: MySQL
- **Server**: Apache Tomcat
- **Build Tool**: Apache Ant (NetBeans project)
- **Libraries**:
  - MySQL Connector (5.1.23)
  - Apache Commons (Net, Codec, FileUpload, IO)
  - JavaMail API
  - Java EE

## Prerequisites

Before running this application, ensure you have the following installed:

1. **Java Development Kit (JDK) 1.8 or higher**
2. **Apache Tomcat 8.0 or higher**
3. **MySQL Server 5.7 or higher**
4. **NetBeans IDE** (recommended) or **Apache Ant**

## Database Setup

1. **Install and start MySQL Server**

2. **Create the database:**
   ```sql
   CREATE DATABASE privacy_characterization;
   USE privacy_characterization;
   ```

3. **Create required tables:**
   ```sql
   -- Doctor table
   CREATE TABLE doctor (
       id INT AUTO_INCREMENT PRIMARY KEY,
       username VARCHAR(50) NOT NULL,
       password VARCHAR(50) NOT NULL,
       qualification VARCHAR(100),
       email VARCHAR(100),
       mobile VARCHAR(15)
   );

   -- Patient details table
   CREATE TABLE patientdetails (
       pid VARCHAR(20) PRIMARY KEY,
       pname VARCHAR(100) NOT NULL,
       bgroup VARCHAR(5),
       disease VARCHAR(200),
       email VARCHAR(100),
       mobile VARCHAR(15),
       city VARCHAR(50),
       dob DATE,
       age INT,
       address TEXT,
       gender VARCHAR(10),
       zip VARCHAR(10),
       year VARCHAR(4)
   );

   -- Add other tables as needed for analysts, etc.
   ```

4. **Update database credentials:**
   - Default credentials in `src/java/sources/databasecon.java`:
     - Host: `localhost:3306`
     - Database: `privacy_characterization`
     - Username: `root`
     - Password: `root`
   
   Modify these credentials in the `databasecon.java` file if your MySQL setup differs.

## Installation & Setup

### Option 1: Using NetBeans IDE (Recommended)

1. **Clone or download the project**
   ```bash
   git clone <repository-url>
   cd "Privacy Characterization and Quantification"
   ```

2. **Open in NetBeans:**
   - File → Open Project
   - Navigate to the project directory
   - Select the project folder

3. **Configure Tomcat Server:**
   - Tools → Servers
   - Add Server → Apache Tomcat
   - Provide Tomcat installation path

4. **Build and Deploy:**
   - Right-click project → Clean and Build
   - Right-click project → Deploy

5. **Run the application:**
   - Right-click project → Run
   - Or deploy to Tomcat and access via browser

### Option 2: Using Command Line (Ant)

1. **Ensure Ant is installed:**
   ```bash
   ant -version
   ```

2. **Build the project:**
   ```bash
   ant clean
   ant compile
   ant dist
   ```

3. **Deploy to Tomcat:**
   ```bash
   # Copy the generated WAR file to Tomcat webapps directory
   copy dist\Privacy_Characterization_and_Quantification.war %TOMCAT_HOME%\webapps\
   ```

4. **Start Tomcat:**
   ```bash
   %TOMCAT_HOME%\bin\startup.bat
   ```

## Running the Application

1. **Start MySQL Server**

2. **Start Tomcat Server**

3. **Access the application:**
   ```
   http://localhost:8080/Privacy_Characterization_and_Quantification/
   ```

## Default Login Credentials

### Admin Access
- **URL**: `http://localhost:8080/Privacy_Characterization_and_Quantification/admin.jsp`
- **Username**: `admin`
- **Password**: `admin`

### Doctor Access
- **URL**: `http://localhost:8080/Privacy_Characterization_and_Quantification/doctor.jsp`
- **Credentials**: Register new doctor or use database entries

### Patient Access
- **URL**: `http://localhost:8080/Privacy_Characterization_and_Quantification/patient.jsp`
- **Login**: Use Patient ID (no password required)

## Project Structure

```
Privacy Characterization and Quantification/
├── build/                          # Compiled classes and build artifacts
├── dist/                           # Distribution WAR files
├── lib/                            # External JAR dependencies
├── nbproject/                      # NetBeans project configuration
├── src/
│   ├── conf/                       # Configuration files
│   └── java/
│       └── sources/
│           └── databasecon.java    # Database connection class
├── web/                            # Web application files
│   ├── *.jsp                       # JSP pages for different modules
│   ├── images/                     # Static images
│   ├── stylesheet/                 # CSS files
│   └── WEB-INF/                    # Web application configuration
├── build.xml                       # Ant build configuration
└── README.md                       # This file
```

## Key Application Modules

1. **Admin Module** (`admin.jsp`, `adminact.jsp`, `adminhome.jsp`)
   - System administration
   - User management
   - System configuration

2. **Doctor Module** (`doctor.jsp`, `doctoract.jsp`, `doctorhome.jsp`)
   - Doctor registration and login
   - Patient data entry
   - Medical record management

3. **Analyst Module** (`analyst.jsp`, `analystact.jsp`, `analysthome.jsp`)
   - Data analysis tools
   - Privacy metrics calculation
   - L-diversity implementation

4. **Patient Module** (`patient.jsp`, `patientact.jsp`, `patienthome.jsp`)
   - Patient data viewing
   - Personal information access

## Troubleshooting

### Common Issues

1. **Database Connection Error:**
   - Verify MySQL is running
   - Check database credentials in `databasecon.java`
   - Ensure database `privacy_characterization` exists

2. **Tomcat Deployment Issues:**
   - Check Tomcat logs in `%TOMCAT_HOME%\logs\`
   - Verify all JAR dependencies are in `lib/` folder
   - Ensure Java version compatibility

3. **Build Errors:**
   - Verify JDK 1.8+ is installed and configured
   - Check all dependencies in `lib/` folder
   - Clean and rebuild project

4. **JSP Compilation Errors:**
   - Ensure Tomcat supports JSP compilation
   - Check for syntax errors in JSP files
   - Verify servlet-api.jar is available

### Port Configuration

- **Default Tomcat Port**: 8080
- **MySQL Port**: 3306

To change ports, modify:
- Tomcat: `%TOMCAT_HOME%\conf\server.xml`
- MySQL: `my.cnf` or `my.ini`

## Development

### Adding New Features

1. **Database Changes:**
   - Update database schema
   - Modify `databasecon.java` if needed

2. **New JSP Pages:**
   - Add JSP files in `web/` directory
   - Update navigation in existing pages

3. **Java Classes:**
   - Add new classes in `src/java/sources/`
   - Update build configuration if needed

### Building for Production

1. **Update Configuration:**
   - Change database credentials for production
   - Update server configurations

2. **Build WAR file:**
   ```bash
   ant clean dist
   ```

3. **Deploy:**
   - Copy WAR file to production Tomcat server
   - Configure production database

## License

This project is for educational and research purposes in privacy-preserving data management.

## Support

For issues and questions:
1. Check the troubleshooting section
2. Review Tomcat and MySQL logs
3. Verify all prerequisites are properly installed