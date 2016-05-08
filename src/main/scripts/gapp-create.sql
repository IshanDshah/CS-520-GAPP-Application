   
    create table ApplicationStatus_status (
        ApplicationStatus_status_Id int4 not null,
        status varchar(255)
    );

    create table Degree (
        degree_Id int4 not null,
        collegeName varchar(255),
        degreeGained varchar(255),
        endDate timestamp,
        major varchar(255),
        startDate timestamp,
        student_student_id int4,
        primary key (degree_Id)
    );

    create table Department (
        departmentId int4 not null,
        departmentName varchar(255),
        primary key (departmentId)
    );

    create table ExtraInfo (
        extr_id int4 not null,
        fieldName varchar(255),
        fieldType varchar(255),
        required boolean,
        department_departmentId int4,
        primary key (extr_id)
    );

    create table StudentDetails (
        student_id int4 not null,
        cin int4,
        citizenship varchar(255),
        dateOfBirth timestamp,
        email varchar(255),
        firstName varchar(255),
        gender varchar(255),
        gpa float8 not null,
        gre float8 not null,
        lastName varchar(255),
        phone varchar(255),
        toefl float8 not null,
        transcript bytea,
        departmentId int4,
        user_user_id int4,
        primary key (student_id)
    );

    create table Users_userType (
        Users_user_id int4 not null,
        userType varchar(255)
    );

    create table application (
        application_Id int4 not null,
        datechanged timestamp,
        saved boolean,
        term varchar(255),
        programId int4,
        primary key (application_Id)
    );

    create table program (
        programId int4 not null,
        programName varchar(255),
        departmentId int4,
        primary key (programId)
    );

    create table status (
        status_Id int4 not null,
        comment varchar(255),
        eventTime timestamp,
        application_Id int4,
        student_Id int4,
        primary key (status_Id)
    );

    create table users (
        user_id int4 not null,
        email varchar(255),
        firstName varchar(255),
        lastname varchar(255),
        password varchar(255),
        primary key (user_id)
    );

    alter table ApplicationStatus_status 
        add constraint FK_cobkrfoe3r9yr311hp4hgn85k 
        foreign key (ApplicationStatus_status_Id) 
        references status;

    alter table Degree 
        add constraint FK_3ktd1yah4baaujn9dsigtceyu 
        foreign key (student_student_id) 
        references StudentDetails;

    alter table ExtraInfo 
        add constraint FK_359yguvgkq7kjr3abq8dhilwe 
        foreign key (department_departmentId) 
        references Department;

    alter table StudentDetails 
        add constraint FK_o83wwnmxik9yx4ebwgruyj5ut 
        foreign key (departmentId) 
        references Department;

    alter table StudentDetails 
        add constraint FK_8op67q03oqeoyhee98m3p836k 
        foreign key (user_user_id) 
        references users;

    alter table Users_userType 
        add constraint FK_2ubex18cs3u6usevrb8lc4bcx 
        foreign key (Users_user_id) 
        references users;

    alter table application 
        add constraint FK_7l8toxfx1ynqeh4nw52l2t4r6 
        foreign key (programId) 
        references program;

    alter table program 
        add constraint FK_bq6pwous3kn749uhrc7r96n4c 
        foreign key (departmentId) 
        references Department;

    alter table status 
        add constraint FK_73dc6kr6gkt5jwd7vpjlcicx2 
        foreign key (application_Id) 
        references application;

    alter table status 
        add constraint FK_boxlykpmea4ne57ixifhlhrxp 
        foreign key (student_Id) 
        references StudentDetails;

    create sequence hibernate_sequence minvalue 100;




INSERT INTO public.users(
            user_id, email, firstname, lastname, password)
    VALUES (1, 'admin@localhost.localdomain', 'john', 'doe', 'abcd');

    INSERT INTO public.users(
            user_id, email, firstname, lastname, password)
    VALUES (2, 'staff1@localhost.localdomain', 'doe', 'john', 'abcd');

    INSERT INTO public.users(
            user_id, email, firstname, lastname, password)
    VALUES (3, 'staff2@localhost.localdomain','joane' , 'tien', 'abcd');

    INSERT INTO public.users(
            user_id, email, firstname, lastname, password)
    VALUES (4, 'student1@localhost.localdomain', 'ishan', 'shah', 'abcd');

        INSERT INTO public.users(
            user_id, email, firstname, lastname, password)
    VALUES (5, 'student2@localhost.localdomain', 'sam', 'shah', 'abcd');

    insert into users_usertype values(1,'admin');
    insert into users_usertype values(2,'staff');
    insert into users_usertype values(3,'staff');
    insert into users_usertype values(4,'student');
    insert into users_usertype values(5,'student');
    
    
    INSERT INTO public.department(
            departmentid, departmentname)
    VALUES (1, 'Accounting Department');

    INSERT INTO public.department(
            departmentid, departmentname)
    VALUES (2, 'Computer Science Department');

    

    INSERT INTO public.program(
            programid, programname, departmentid)
    VALUES (1, 'MS in Accounting', 1);

    INSERT INTO public.program(
            programid, programname, departmentid)
    VALUES (2, 'MS in Computer Science', 2);

    
    INSERT INTO public.application(
            application_id, datechanged, saved, term, programid)
    VALUES (1, null, true, 'Fall 2015', 1);

    INSERT INTO public.application(
            application_id, datechanged, saved, term, programid)
    VALUES (2, null, false, 'Fall 2016', 1);

    
    INSERT INTO public.extrainfo(
            extr_id, fieldname, fieldtype, required, department_departmentid )
    VALUES (1, 'GMAT', 'number', true, 1);
    
    
    INSERT INTO public.studentdetails(
            student_id, cin, citizenship, dateofbirth, email, firstname, 
            gender, gpa, gre, lastname, phone, toefl, transcript, departmentid,user_user_id)
    VALUES (1, '304387556','indian', '1990-11-30','student1@localhost.localdomain', 'ishan', 
            'male',3.6 ,320 , 'shah','408-242-3237', 101, 'great', 1,4);

    INSERT INTO public.studentdetails(
            student_id, cin, citizenship, dateofbirth, email, firstname, 
            gender, gpa, gre, lastname, phone, toefl, transcript, departmentid,user_user_id)
    VALUES (2, '304387512','indian', '1995-11-30','student2@localhost.localdomain', 'ishan', 
            'male',3.2 ,310 , 'shah','408-666-3237', 195, 'great', 1,5);        
    
            

    
    INSERT INTO public.degree(
            degree_id, collegename, degreegained, enddate, major, startdate, 
            student_student_id)
    VALUES (1, 'HGCE', 'B.E', '2014-10-12', 'CS', '2010-12-12', 
            1);
    
            
              INSERT INTO public.degree(
            degree_id, collegename, degreegained, enddate, major, startdate, 
            student_student_id)
    VALUES (2, 'CSULA', 'M.E', '2016-10-12', 'CS', '2014-12-12', 
            2);
    
            
    INSERT INTO public.status(
            status_id, comment, eventtime ,application_id, student_id)
    VALUES (1, 'Submitted', '2016-01-30', 1, 1);
    
            
    INSERT INTO public.status(
            status_id, comment, eventtime ,application_id, student_id)
    VALUES (2, 'Submitted', '2016-01-30', 2, 2);

            
    
    
