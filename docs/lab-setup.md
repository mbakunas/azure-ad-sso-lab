# Setting Up the Lab #

## 1. Set up the servers ##


## 2. Create a demo Office 365 tenant ##


1. Go to [demos.microsoft.com](http://demos.microsoft.com)
2. Select the Microsoft Partner Login and log in with a Microsoft account.  NOTE: if you haven't already, you'll need to associate the MSID with Avanade.  Just follow the prompts to perform the step.
3. Once on the home page, click on one of the +Create a New Demo Environment links
4. Under Create A New Tenant click Quick Tenant (it's the only option)
5. Select **Standard Office 365 Demo Content (Recommended)** and click **Next**
6. You don't need any add-ons for this demo, so just click **Next**
7. Click **Finish**
8. You'll see your admin credentials which you'll need to store in your password manager (you're using a password manager, right?)


## 3. Log Into the Office 365 Admin Portal and add a Custom Domain ##
1. Go to [portal.office.com](https://portal.office.com) and log in with the credentials from step 2.8, above
2. The first time you log in you'll be prompted to set up an authentication phone and e-mail address.  Use your actual mobile number and Avanade e-mail address here as you'll need to verify that these do belong to you
3. Click the application selector in the upper left-hand corner of the page and select the Admin icon
4. You'll be prompted to go to Setup to finish some items like selecting a domain which adds a custom domain to your Azure AD tenant.  You should do this now instead of during the Azure AD Connect wizard - just one less item to worry about when you're running the wizard (Hint: before you smack the Verify link, use nslookup and point to the Google DNS servers at 8.8.8.8 and make sure the record exists)
5.  


## 4. Get an SSL certificate ##
1. 