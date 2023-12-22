# sonarqube-docker

This is a simple project to save some time using sonarqube and sonarscanner on docker.

## Step 1
---
### 1. Setup your environment with .env :

**SONAR_USER**={*YOUR_SONAR_USER*}
**SONAR_PASSWORD**={*YOUR_SONAR_PASSWORD*}
**SOURCE_DIRECTORY**={*YOUR_SOURCE_DIRECTORY*} 
> ⚠️ For windows users ⚠️
Adapt your path to Linux
Your path must only use "/"
~~usr\test~~ ➡️ usr/test

**SONAR_TOKEN**={*YOUR_SONAR_TOKEN*}
**PROJECT_KEY**={*PROJECT_NAME*}

In your first launch you will not be able to setup **SONAR_USER**, **SONAR_PASSWORD** and **SONAR_TOKEN**. Thoses come later.

---
### 2. Setup your credentials

It's time for your first launch !

`docker-compose up`

When your Sonarqube container is launch go on its [desktop](http://localhost:9000).

You will see this :

![Login image](/images/login.png "Login image")

The defaults credentials are :
**Login**: *admin*
**Password**: *admin*

In the next page sonarqube will ask you to choose a new password, preceed and you are now able update your .env as follow :

**SONAR_USER**={*YOUR_SONAR_USER*}
**SONAR_PASSWORD**={*YOUR_SONAR_PASSWORD*}

---
### 3. Setup you **SONAR_TOKEN**

Go on the top right corner and click on "My Account"

![My Account](/images/MyAccount.png "My Account")

Then select the "Security" tab :

![Security](/images/Security.png "Security")

Your final step is to generate a key and copy-paste it in your .env

**SONAR_TOKEN**={*YOUR_SONAR_TOKEN*}

---
## Step 2

Launch your docker-compose and enjoy ! 😊
`docker-compose up`