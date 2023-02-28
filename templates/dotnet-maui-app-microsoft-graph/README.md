
# .NET MAUI (Multi-platform App UI) app connected to Microsoft Graph

This is a template for MAUI(Multi-platform App UI) app that connects to Microsoft Graph.

## Minimal Path to Awesome 🚀

Follow the instructions to successfully run your MAUI app with Microsoft Graph.

Install [Visual Studio 2022](https://visualstudio.microsoft.com/downloads/) with MAUI development workload if you haven't already:
![MAUI Workload with Visual Studio](/templates/dotnet-maui-app-microsoft-graph/maui-workload.png)

### 1. Register an Azure Active Directory app

Every app that uses Azure AD for authentication must be registered with Azure AD. You can register app through Azure Portal or by using Azure CLI. Please follow one of the options to register your app:

<details>
  <summary>Option 1: Register an app by using Azure CLI</summary>

* [Install Azure CLI](https://learn.microsoft.com/cli/azure/install-azure-cli?view=azure-cli-latest) if you haven't already.
* Register your app on Microsoft Azure, by creating a new Azure AD app registration:
  * <details>
      <summary>On macOS/Linux/in Bash</summary>

    * Open terminal and change the working directory to the root of this project
    * To make the setup script executable, run `chmod +x ./setup.sh`
    * To register the app, run `./setup.sh`
    * When prompted, sign in with your **Microsoft 365 developer sandbox account**

    </details>
  * <details>
      <summary>On Windows/in PowerShell</summary>

    * Open PowerShell and change the working directory to the root of this project
    * To register the app, run `.\setup.ps1`
    * When prompted, sign in with your **Microsoft 365 developer sandbox account**

    </details>

</details>

<details>

  <summary>Option 2: Register an app through Azure Portal</summary>

* Go to [Azure Portal](https://portal.azure.com) and login with your testing account that has Application developer or administrator permissions.
* Select **Azure Active Directory**, and select **App Registrations** from the left side bar. Then select **+ New registration**.
* Give any name to your app. For **Supported account types**, select **Accounts in any organizational directory (Any Azure AD directory - Multitenant) and personal Microsoft accounts (e.g. Skype, Xbox)**.
* Set the **Redirect URI** drop down to **Public client/native (mobile & desktop)** and enter `https://login.microsoftonline.com/common/oauth2/nativeclient`. Then, select **Register**.

Navigate to **Overview tab** and make a note of the **Application (client) ID**. You'll use them in the next steps.

</details>

### 2. Run your MAUI app

* Clone the Hack Together repository to your local workspace or directly download the source code.
* Update app and secret (only if in the previous step you registered your app manually)
  * Open the project folder `dotnet-maui-app-microsoft-graph` and double click to `MAUIwithMSGraph.sln` file to open your project with Visual Studio.
  * Navigate to your MAUI project, and select *GraphService.cs* file, replace "CLIENT_ID" with `Application (client) ID` that you copied from your Azure Active Directory app.
* Select **Local Machine** button to run your app on your machine.

In your MAUI app, select **Load User Info** and log in using an Azure AD user account.

After the login, you'll see your display name mentioned in the app:

![UWP App](/templates/dotnet-maui-app-microsoft-graph/maui.png)

## Reference

* [Tutorial: Create a .NET MAUI app using the Microsoft Graph SDK](https://learn.microsoft.com/windows/apps/windows-dotnet-maui/tutorial-graph-api)
* [Quickstart: Register an application with the Microsoft identity platform](https://learn.microsoft.com/azure/active-directory/develop/quickstart-register-app)