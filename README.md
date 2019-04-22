# STICKY-NOTES
A website to create and manage quick notes that you need to take while surfing or while learning something from online tutorials. The website has all the rich text editor options to add bulleted list, images, numbered lists etc

### Features
- User Management
- Rich Text Editor
- Docker

### Installation Guide(For Ubuntu)
1. `git clone <repo_url>`
2. Make sure that you have docker and docker-compose tools,
    - `sudo docker --version`
    - `sudo docker-compose --version`
3. Go inside the project directory(directory which contains `manage.py` file)
4. Make sure that `port: 3306 and 8000` are not occupied, as those ports will be attached to services running in container
    - `sudo service mysql stop` to stop mysql service which runs on 3306 port
5. Run the command `sudo docker-compose up`
6. On a new terminal check if container is running by the command,
    -  `sudo docker-compose ps`
    -  `sudo docker ps`
    Also, make sure to check the status of the services 
7. Copy the container id of the container `quantiphi-workshop_mysqldb_1` by running `sudo docker ps`
8. Run the following migration command `sudo docker exec -it <copied_id> python3 manage.py migrate`

### Usage Guide
1. Go to the url `http://localhost:8000`, it will take you to the login screen
![login page](https://raw.githubusercontent.com/das-raj/quantiphi-workshop/master/demo_images/login.png)
2. Click on `New Here? Sign Up` to go to the signup page
![signup page](https://raw.githubusercontent.com/das-raj/quantiphi-workshop/master/demo_images/signup.png)
3. After the registration is done successfully, you'll be redirected to the home page, note that you initially won't see any notes, home page shows some of your recent notes
![home page](https://raw.githubusercontent.com/das-raj/quantiphi-workshop/master/demo_images/recent_notes.png)
4. To create a new note, click on `+New` ,
![create new_note](https://raw.githubusercontent.com/das-raj/quantiphi-workshop/master/demo_images/new_note.png)
5. To edit or delete notes, go to `Manage Notes` ,
![manage notes](https://raw.githubusercontent.com/das-raj/quantiphi-workshop/master/demo_images/manage_notes.png)


--------------------------------------------------------------------------------------------------------------------------
- docker installation guide: https://docs.docker.com/install/linux/docker-ce/ubuntu/
- docker-compose installation guide: https://docs.docker.com/compose/install/
