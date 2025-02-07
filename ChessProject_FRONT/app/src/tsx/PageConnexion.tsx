import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom"; // Importer useNavigate pour la redirection
import styles from "../css/pageco.module.css"; // Styles
import chessImage from '../assets/chess.png';



const PageConnexion: React.FC = () => {
  const navigate = useNavigate(); // Hook pour la redirection
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    // Ajouter dynamiquement les polices Google
    const fontLink = document.createElement("link");
    fontLink.href =
      "https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap";
    fontLink.rel = "stylesheet";
    document.head.appendChild(fontLink);

    return () => {
      document.head.removeChild(fontLink);
    };
  }, []);

  const handleLogin = async (e: React.FormEvent) => {
    e.preventDefault(); // Empêcher la soumission classique du formulaire

    const response = await fetch(`http://localhost:8080/auth/login?email=${encodeURIComponent(email)}&password=${encodeURIComponent(password)}`, {
      method: "POST",
      headers: { "Content-Type": "application/json" }
    });

    const text = await response.text(); // Lire la réponse en texte brut

    try {
      const data = JSON.parse(text); // Essayer de parser le JSON
      if (response.ok) {
        localStorage.setItem("token", data.token);
        localStorage.setItem("user", JSON.stringify(data.user));

        // 🔥 Modification ici : Rediriger vers /profil avec username et token dans l'URL
        navigate(`/profil?username=${encodeURIComponent(data.user.username)}&token=${encodeURIComponent(data.token)}`);
      } else {
        setError(data.message || "Échec de la connexion");
      }
    } catch (e) {
      setError("Erreur de réponse du serveur: " + text); // Afficher la réponse brute si l'analyse échoue
    }
};

return (
  <div className={styles.main}>
    {/* Conteneur du logo */}
    <div className={styles.logoContainer}>
      <img src={chessImage} className={styles.logo} alt="Logo projet" />
    </div>

    <input type="checkbox" id={styles.chk} aria-hidden="true" />

    <div className={styles.signup}>
      <form action="http://localhost:8080/auth/signup" method="POST">
        <label htmlFor={styles.chk} className={styles.label}>Sign up</label>
        <input type="text" name="username" placeholder="username" required className={styles.input} />
        <input type="email" name="email" placeholder="email" required className={styles.input} />
        <input type="password" name="password" placeholder="password" required className={styles.input} />
        <button type="submit" className={styles.button}>Sign up</button>
      </form>
    </div>

    <div className={styles.login}>
      <form onSubmit={handleLogin}>
        <label htmlFor={styles.chk} className={styles.label}>Login</label>
        <input type="email" placeholder="email" required className={styles.input} value={email} onChange={(e) => setEmail(e.target.value)} />
        <input type="password" placeholder="password" required className={styles.input} value={password} onChange={(e) => setPassword(e.target.value)} />
        <button type="submit" className={styles.button}>Login</button>
        {error && <p style={{ color: "red" }}>{error}</p>}
      </form>
    </div>
  </div>
);


};

export default PageConnexion;
