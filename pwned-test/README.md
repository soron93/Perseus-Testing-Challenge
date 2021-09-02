# Perseus Testing Challenge 

## Objective

The task is to create an automated test suite that covers the following two sceanrios:

Scenario one: 
* Open a browser and navigate to https://haveibeenpwned.com/ with a browser
* Type in the email address: test@something.com
* Check that the website shows the pwned-warning

Scenario two: 
* Open a browser and navigate to https://haveibeenpwned.com/ with a browser
* Type in the email address: test@something.com or test@elsewhere.com
* Check that the website shows no pwned-warning


## What is it?
This project consist of a test suite utilizing Selenium library and the Robot Framework.

* The PwnageTest case is procedurally written where as the GherkinPwnageTest is written with gherkin syntax.

## Getting Started 
Here are the prerequisites for running this testing framework.

### Step 1: Install Python 
Visit the following website to download Python software.

https://www.python.org/downloads/

Download the latest version for your operating system (eg: macOS)

### Step 2: Install Pip3
* Follow this link https://pip.pypa.io/en/stable/installation/ to download pip3 on your computer
* Follow the instructions on the page and then after successfully downloading Pip3, run `python3 get-pip.py` in your terminal
* This will install pip3 into your computer and then you can check the installation of pip3 by running `which pip3` in your terminal.

### Step 3: install requirements 
Open the Command-line interface (CLI) and navigate to the pwned-test folder and run `pip3 install requirements.txt`

This command will install all the required software the project will use to run the test suite including robotframework, selenium library, chromedriver, geckodriver and more.  
 


## Running the test
* Navigate to the pwned-test directory with the CLI.
* This test suite can be run using the following commands:

    `robot -d Results -N "Full Regression" Tests` 

        Full Regression, this will run all test siutes and test cases
    
    `robot -d Results Tests/PwnageTest.robot` 

        This will run all test cases within a single test

    `robot -d Results -i Smoke Tests/GherkinPwnageTest.robot` 

        This will run only the test step that has been tagged, in this case only the Smoke test will run



### Switching browsers
Browsers can be easily switched becasue `${BROWSER}` is a Robot variable that is used in the test cases. This allows changes to be made to the browser in a single place if needed.

Simply change`${BROWSER} = gc` to `${BROWSER} = ff` in the robot test to run the test suite in Firefox.


### Testing emails
It is possible to change the emails that are being checked for a data breach by changing the emails in the environment variables:

* `${SEARCH_PWNED_EMAIL` = thatemail@elsewhere.com
* `${SEARCH_NOT_PWNED_EMAIL}` = thisemail@elsewhere.com


### Changing the tests and reports directories
It is possible to use different directories to read tests from and to generate reports to. This is useful when using a complex test file structure. 

Test reports are automatically generated to the Results folder by defining the location with '-d' in the robot run command:
    
    robot \
        -d Results Tests <log.html, output.xml, report.html will be generated in the Reults folder>
        -d Reports Tests <this will create a new folder in the pwned-test root directory titled 'Reports' where the test report files will be saved to> 
        

### Accessing the logs
The logs can be accessed by simply opening the report.html in any browser. The report file gives general informaiton with searchable criteria about the test suite. In case further investigation is required, open the log.html file with a browser for a more detailed view of the test cases. The log file gives information about each step the test takes. 


