---
page_type: sample
description: "This sample demos UI to type in Incoming Webhook URL and message card payload, which send the card in the team also demonstrates the HttpPOST action in the card. "
products:
- office-teams
- office
- office-365
languages:
- nodejs
- javascript
extensions:
  contentType: samples
  createdDate: "07/01/2022 02:36:57 PM"
urlFragment: officedev-microsoft-teams-samples-incoming-webhook-nodejs
---

# Incoming webhook

This sample demos UI to type in Incoming Webhook URL and message card payload, which send the card in the team also demonstrates the HttpPOST action in the card. 

- **Interaction with tab**
![webhook-tab ](Images/webhook-app.gif)

## Prerequisites

- [NodeJS](https://nodejs.org/en/)
- [ngrok](https://ngrok.com/) or equivalent tunnelling solution
- [Teams](https://teams.microsoft.com) Microsoft Teams is installed and you have an account


## Setup

### 1. Setup for incoming webhook

1) Create a incoming webhook. [Create incoming webhooks](https://docs.microsoft.com/en-us/microsoftteams/platform/webhooks-and-connectors/how-to/add-incoming-webhook). Keep this webhook URL handy while running the sample.

### 2. Setup NGROK
1) Run ngrok - point to port 3978

```bash
# ngrok http -host-header=rewrite 3978
```

### 3. Setup for code

1) Clone the repository
   ```bash
   git clone https://github.com/OfficeDev/Microsoft-Teams-Samples.git
   ```
1) Install node modules

   Inside node js folder,  navigate to `samples/incoming-webhoook/nodejs/api` open your local terminal and run the below command to install node modules. You can do the same in Visual Studio code terminal by opening the project in Visual Studio code.

   - Repeat the same step in folder `samples/incoming-webhoook/nodejs/ClientApp`

    ```bash
    npm install
    ```

    If you face any dependency error while installing node modules, try using below command

    ```bash
    npm install --legacy-peer-deps
    ```

1) We have two different solutions to run so follow below steps:
 
   A) In a terminal, navigate to `samples/incoming-webhoook/nodejs/api`

   B) In a different terminal, navigate to `samples/incoming-webhoook/nodejs/ClientApp`

1) Run both solutions i.e. `samples/incoming-webhoook/nodejs/api` and `samples/incoming-webhoook/nodejs/ClientApp`
    ```
    npm start
    ```

### 4. Setup Manifest for Teams
1) __*This step is specific to Teams.*__
    - **Edit** the `manifest.json` contained in the  `AppPackage` folder to replace `{{Manifest-id}}` with any `GUID` ID.
    - **Edit** the `manifest.json` for `contentUrl`, `websiteUrl` inside `staticTabs` section. Replace `<<Domain-name>>` with app's base Url domain. E.g. if you are using ngrok it would be `https://1234.ngrok.io` then your domain-name will be `1234.ngrok.io`.
    - **Edit** the `manifest.json` for `validDomains` with base Url domain. E.g. if you are using ngrok it would be `https://1234.ngrok.io` then your domain-name will be `1234.ngrok.io`.
    - **Zip** up the contents of the `AppPackage` folder to create a `manifest.zip` (Make sure that zip file does not contains any subfolder otherwise you will get error while uploading your .zip package)
    - **Upload** the `manifest.zip` to Teams (In Teams Apps/Manage your apps click "Upload an app". Browse to and Open the .zip file. At the next dialog, click the Add button.)
    - Add the app to personal scope.


## Running the sample
- Open Incoming webhook tab.
![webhook-tab ](Images/incoming-webhook-page.png)

- Click on send button. You will get a card from webhook in the team where incoming webhook is added.
![webhook-tab ](Images/incoming-webhook-card.png)

## Further reading

- [Build webhooks and connectors ](https://docs.microsoft.com/en-us/microsoftteams/platform/webhooks-and-connectors/what-are-webhooks-and-connectors)