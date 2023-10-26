<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="login/style.css" />
    <title>Form Input Wave</title>
  </head>
  <body>
    <div class="container">
      <h1>Please Login</h1>
      <form action="login">
        <div class="form-control">
          <input type="text"  name="mobile" required>
          <label>Mobile</label>
          <!-- <label>
            <span style="transition-delay: 0ms">E</span>
              <span style="transition-delay: 50ms">m</span>
              <span style="transition-delay: 100ms">a</span>
              <span style="transition-delay: 150ms">i</span>
              <span style="transitionR-delay: 200ms">l</span>
        </label> -->
        </div>

        <div class="form-control">
          <input type="password" name="password" required>
          <label>Password</label>
        </div>

        <button class="btn">Login</button>

        <p class="text">Don't have an account? <a href="register.jsp">Register</a> </p>
      </form>
    </div>
    <script src="login/script.js"></script>
  </body>
</html>





