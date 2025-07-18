### 🧰 First-Time Git Setup for a Project

Follow these steps to set up Git for your project and push it to a remote repository:

1. **Initialize a Git repository**
   Run this in the root folder of your project:

   ```bash
   git init
   ```

2. **Add all project files to Git**

   ```bash
   git add .
   ```

3. **Commit the added files with a message**

   ```bash
   git commit -m "Initial commit"
   ```

4. **Add the remote repository (e.g., GitHub)**
   Replace the URL with your own repo link:

   ```bash
   git remote add origin https://github.com/your-username/your-repo-name.git
   ```

5. **Push your code to the remote repository**
   For the first push:

   ```bash
   git branch -M main
   git push -u origin main
   ```

---

---

### 🔁 Git Workflow for Updates (After Initial Setup)

Whenever you make changes to your project:

1. **Stage the updated files**

   ```bash
   git add .
   ```

2. **Commit the changes with a message**

   ```bash
   git commit -m "Your commit message here"
   ```

3. **Push the changes to the remote repo**

   ```bash
   git push
   ```

---



