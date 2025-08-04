<#import "/templates/system/common/crafter.ftl" as crafter />
<#assign token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJvcmdhbml6YXRpb25JZCI6IjY3YWM3OGI2NDFmM2U0M2Y5MzQ3MzgxMCIsInVzZXJfbmFtZSI6Intsb2dpblJvbGU9bnVsbCwgaWQ9Njc4NDYwZTM1MDlhYzM0NjRkNmI2MjEwLCB1c2VybmFtZT1wcm9qZWN0LmNhZ2VAZ21haWwuY29tLCBkZXZpY2VUeXBlPW51bGwsIGRldmljZU5hbWU9bnVsbCwgc2Vzc2lvbklkPW51bGwsIHByb2plY3RJZD02ODY1MmM1MTFmN2Y2NDcyYTY3MGU0YTIsIG9yZ2FuaXphdGlvbklkPTY3YWM3OGI2NDFmM2U0M2Y5MzQ3MzgxMCwgcmVzdHJpY3Rpb25zPXtvcmdhbml6YXRpb25JZD02N2FjNzhiNjQxZjNlNDNmOTM0NzM4MTAsIGRvbWFpbnM9W2h0dHBzOi8vdm9jYWxjaGF0Ym90LmRlZXByZWFsaXR5LmNsb3VkLCBodHRwOi8vNTEuNjguMTczLjIwMSwgaHR0cHM6Ly9kZW1vLnNob3J0Y3V0LnVubywgaHR0cDovL2RlbW8uc2hvcnRjdXQudW5vLCBodHRwczovL2lkZWFsZS5zaG9ydGN1dC51bm8sIGh0dHA6Ly9pZGVhbGUuc2hvcnRjdXQudW5vLCBodHRwOi8vNTEuNjguMTczLjIwMTo4MDgwLCBodHRwOi8vNTEuNjguMTczLjIwMTo5MDgxLCBodHRwOi8vbG9jYWxob3N0OjUwMDAsIGh0dHA6Ly9sb2NhbGhvc3QsIDE3Mi4yMS4wLjEsIGxvY2FsaG9zdDo1MDAwLCBsb2NhbGhvc3Q6ODA4MCwgbG9jYWxob3N0OjkwODAsIGlkZWFsZS5zaG9ydGN1dC51bm8sIDUxLjY4LjE3My4yMDEsIDUxLjY4LjE3My4yMDE6ODA4MCwgNTEuNjguMTczLjIwMTo5MDgxLCBsb2NhbGhvc3Q6NTE3MywgZGVtby5zaG9ydGN1dC51bm8sIGh0dHBzOi8vYXBpLnNob3J0Y3V0LnVubywgaHR0cDovLzUxLjY4LjE3My4yMDEsIGh0dHA6Ly8xMjcuMC4wLjEsIGFwaS5zaG9ydGN1dC51bm8sIGh0dHBzOi8vYXBpLnNob3J0Y3V0LnVubywgbG9jYWxob3N0LCAxMjcuMC4wLjFdfSwgZW5hYmxlZD10cnVlLCBhY2NvdW50Tm9uRXhwaXJlZD10cnVlLCBjcmVkZW50aWFsc05vbkV4cGlyZWQ9dHJ1ZSwgYWNjb3VudE5vbkxvY2tlZD10cnVlLCBhdXRob3JpdGllcz1be2F1dGhvcml0eT1HQVRFV0FZX1NFUlZFUlNJREV9XX0iLCJzY29wZSI6WyJyZWFkIiwid3JpdGUiXSwicmVzdHJpY3Rpb25zIjp7Im9yZ2FuaXphdGlvbklkIjoiNjdhYzc4YjY0MWYzZTQzZjkzNDczODEwIiwiZG9tYWlucyI6WyJodHRwczovL3ZvY2FsY2hhdGJvdC5kZWVwcmVhbGl0eS5jbG91ZCIsImh0dHA6Ly81MS42OC4xNzMuMjAxIiwiaHR0cHM6Ly9kZW1vLnNob3J0Y3V0LnVubyIsImh0dHA6Ly9kZW1vLnNob3J0Y3V0LnVubyIsImh0dHBzOi8vaWRlYWxlLnNob3J0Y3V0LnVubyIsImh0dHA6Ly9pZGVhbGUuc2hvcnRjdXQudW5vIiwiaHR0cDovLzUxLjY4LjE3My4yMDE6ODA4MCIsImh0dHA6Ly81MS42OC4xNzMuMjAxOjkwODEiLCJodHRwOi8vbG9jYWxob3N0OjUwMDAiLCJodHRwOi8vbG9jYWxob3N0IiwiMTcyLjIxLjAuMSIsImxvY2FsaG9zdDo1MDAwIiwibG9jYWxob3N0OjgwODAiLCJsb2NhbGhvc3Q6OTA4MCIsImlkZWFsZS5zaG9ydGN1dC51bm8iLCI1MS42OC4xNzMuMjAxIiwiNTEuNjguMTczLjIwMTo4MDgwIiwiNTEuNjguMTczLjIwMTo5MDgxIiwibG9jYWxob3N0OjUxNzMiLCJkZW1vLnNob3J0Y3V0LnVubyIsImh0dHBzOi8vYXBpLnNob3J0Y3V0LnVubyIsImh0dHA6Ly81MS42OC4xNzMuMjAxIiwiaHR0cDovLzEyNy4wLjAuMSIsImFwaS5zaG9ydGN1dC51bm8iLCJodHRwczovL2FwaS5zaG9ydGN1dC51bm8iLCJsb2NhbGhvc3QiLCIxMjcuMC4wLjEiXX0sIl9pZCI6IjY3ODQ2MGUzNTA5YWMzNDY0ZDZiNjIxMCIsInByb2plY3RJZCI6IjY4NjUyYzUxMWY3ZjY0NzJhNjcwZTRhMiIsImF1dGhvcml0aWVzIjpbIkdBVEVXQVlfU0VSVkVSU0lERSJdLCJqdGkiOiI3ODdkYjZkNS1jNTk5LTRmZmQtYmNhZS1lYzZmMjFmNWJjMjgiLCJjbGllbnRfaWQiOiJJZGVhbGVfUHJvamVjdF9TZXJ2ZXJfU2lkZS0xNzUxNDYwOTQ1MzY0XzEifQ.gEOwwURfW7ynQ5gHyPhZZeXkDly8KxXZcbcmwsLkf6o" />

<head>
    <meta charset="utf-8">
    <title>Ideale</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <!-- Favicon -->
    <link href="/static-assets/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/static-assets/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/static-assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/static-assets/css/style.css" rel="stylesheet">
    <link href="/static-assets/css/general-style.css" rel="stylesheet">
    <link rel="stylesheet" href="/static-assets/css/contacts.css" />
    <link rel="stylesheet" href="/static-assets/css/catalogo.css" />
    <link rel="stylesheet" href="/static-assets/css/login.css">
    <link rel="stylesheet" href="/static-assets/css/project.css" />
    <link rel="stylesheet" href="/static-assets/css/partner.css" />
    
    <@crafter.head/>
</head>
