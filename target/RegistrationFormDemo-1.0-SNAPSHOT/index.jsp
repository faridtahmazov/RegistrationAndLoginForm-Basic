<%--
  Created by IntelliJ IDEA.
  User: Farid
  Date: 3/24/2022
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="assets/css/register-form.css">
    <script type="text/javascript" src="assets/js/main.js"></script>

    <!-- Font Awesome -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <!-- MDB -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.css"
            rel="stylesheet"
    />

    <!-- MDB -->
    <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.js"
    ></script>
</head>
<body>
<section class="vh-100 bg-image" style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
    <div class="mask d-flex align-items-center h-100 gradient-custom-3">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="card" style="border-radius: 15px;">
                        <div class="card-body p-5">
                            <h2 class="text-uppercase text-center mb-5">Create an account</h2>


                            <form action="<%=request.getContextPath()%>/register" method="post">
                                <div id="savedBox"></div>
                                <div class="form-outline mb-4">
                                    <input type="text" id="form3Example1cg" name="firstName" class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example1cg">Your Name</label>
                                </div>

                                <div class="form-outline mb-4">
                                    <input type="text" id="form3Example2cg" name="lastName" class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example2cg">Your Surname</label>
                                </div>

                                <div class="form-outline mb-4">
                                    <input type="text" id="form3Example3dg" name="username" class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example3dg">Username</label>
                                </div>

                                <div class="form-outline mb-4">
                                    <input type="password" id="form3Example4cg" name="password" class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example4cg">Password</label>
                                </div>

                                <div class="form-outline mb-4">
                                    <input type="text" id="form3Example5cg" name="address" class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example5cg">Address</label>
                                </div>

                                <div class="form-outline mb-4">
                                    <input type="text" id="form3Example6cg" name="contact" class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example6cg">Contact</label>
                                </div>


                                <div class="form-check d-flex justify-content-center mb-5">
                                    <input
                                            class="form-check-input me-2"
                                            type="checkbox"
                                            value=""
                                            id="form2Example3cg"
                                    />
                                    <label class="form-check-label">
                                        I agree all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
                                    </label>
                                </div>

                                <div class="d-flex justify-content-center">
                                    <button type="submit" onclick="saved()" class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
                                </div>

                                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="<%=request.getContextPath()%>/login" class="fw-bold text-body"><u>Login here</u></a></p>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


</body>
</html>
