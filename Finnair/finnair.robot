*** Settings ***
Documentation     A test suite for valid login.
...
...               Keywords are imported from the resource file
Resource          keywords.resource
Default Tags      positive
Library           SeleniumLibrary


*** Test Cases ***
Checking flight price from Warsaw to Helsinki
     Start
     Destination