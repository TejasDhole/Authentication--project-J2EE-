<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Registration</title>

        <link rel="stylesheet" href="register/style.css" />

    </head>

    <body>


        <div class="registration_div">

            <h1>General Informations</h1>
            <form action="registration">
                <div class="hori">
                    <div class="form-control">
                        <div class="first">
                            <input type="text" name="first_name" required>
                            <label>First name</label>
                        </div>


                    </div>

                    <div class="form-control">
                        <div class="last">
                            <input type="text" name="last_name" required>
                            <label>last name</label>
                        </div>

                    </div>
                </div>

                <div class="gender-selector">
                    <label for="gender">Gender:</label>
                    <select id="gender" name="gender" required>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>

                    </select>
                </div>



                <div class="form-control">
                    <input type="text" name="Mobile" id="mobile" required>
                    <label>Mobile</label>
                </div>

                <div class="form-control">
                    <input type="text" name="Address" required>
                    <label>Address</label>
                </div>

                <div class="form-control">
                    <input type="text" name="password" required>
                    <label>Password</label>
                </div>

                <button class="btnrg" type="submit">Register</button>

            </form>


        </div>

        <script src="register/script.js"></script>
    </body>

    </html>