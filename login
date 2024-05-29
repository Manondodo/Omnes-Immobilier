<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion - Omnes Immobilier</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        .login-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 80px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #004d99;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #004d99;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-group button:hover {
            background-color: #003366;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <header>
            <img src="images/logo.png" alt="Omnes Immobilier Logo">
            <h1>Omnes Immobilier</h1>
        </header>
        <nav>
            <a href="index.html" class="nav-button">Accueil</a>
            <a href="tout_parcourir.html" class="nav-button">Tout Parcourir</a>
            <a href="recherche.html" class="nav-button">Recherche</a>
            <a href="rendez_vous.html" class="nav-button">Rendez-vous</a>
            <a href="login.html" class="nav-button">Votre Compte</a>
        </nav>
        <div class="login-container">
            <h2>Connexion</h2>
            <form id="login-form">
                <div class="form-group">
                    <label for="role">Rôle</label>
                    <select id="role" required>
                        <option value="administrateur">Administrateur</option>
                        <option value="agent">Agent Immobilier</option>
                        <option value="client">Client</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="name">Nom</label>
                    <input type="text" id="name" required>
                </div>
                <div class="form-group" id="email-group" style="display: none;">
                    <label for="email">Email</label>
                    <input type="email" id="email">
                </div>
                <div class="form-group">
                    <button type="submit">Se connecter</button>
                </div>
            </form>
        </div>
    </div>
    <script>
        document.getElementById('role').addEventListener('change', function() {
            const emailGroup = document.getElementById('email-group');
            if (this.value === 'client') {
                emailGroup.style.display = 'block';
            } else {
                emailGroup.style.display = 'none';
            }
        });

        document.getElementById('login-form').addEventListener('submit', function(event) {
            event.preventDefault();
            const role = document.getElementById('role').value;
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;

            // Simuler la validation et la redirection en fonction du rôle
            if (role === 'administrateur') {
                if (name === 'Ramdane Cherif Amar') { // Remplacer par le nom réel de l'administrateur
                    window.location.href = 'admin_dashboard.html';
                } else {
                    alert('Nom administrateur incorrect');
                }
            } else if (role === 'agent') {
                const agents = ['Manon Giraudeau', 'Gilles Foucart', 'Antonin Arnaune', 'Ulysse Robinet'];
                if (agents.includes(name)) {
                    window.location.href = 'agent_dashboard.html';
                } else {
                    alert('Nom agent incorrect');
                }
            } else if (role === 'client') {
                if (email) {
                    window.location.href = 'client_dashboard.html';
                } else {
                    alert('Veuillez entrer un email valide');
                }
            }
        });
    </script>
</body>
</html>
