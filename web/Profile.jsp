<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Personal Profile</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <div class="container">

        <div class="form-header">
            <h1>My Personal Profile</h1>
            <p>Student Profile Information</p>
        </div>

        <div class="profile-details">

            <p>
                <strong>Full Name:</strong>
                <%= request.getAttribute("name") %>
            </p>

            <p>
                <strong>Student ID:</strong>
                <%= request.getAttribute("studentId") %>
            </p>

            <p>
                <strong>Program:</strong>
                <%= request.getAttribute("program") %>
            </p>

            <p>
                <strong>Email Address:</strong>
                <%= request.getAttribute("email") %>
            </p>

            <p>
                <strong>Hobbies:</strong>

                <%
                    String[] hobbies = (String[]) request.getAttribute("hobbies");

                    if (hobbies != null && hobbies.length > 0) {

                        for (int i = 0; i < hobbies.length; i++) {

                            out.print(hobbies[i]);

                            if (i < hobbies.length - 1) {
                                out.print(", ");
                            }
                        }

                    } else {
                        out.print("No hobbies selected");
                    }
                %>

            </p>

            <p><strong>Self-Introduction:</strong></p>

            <p>
                <%= request.getAttribute("introduction") %>
            </p>

        </div>

        <br>

        <a href="index.html">
            <button type="button">Back to Form</button>
        </a>

    </div>

</body>
</html>