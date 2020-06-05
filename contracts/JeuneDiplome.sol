pragma solidity ^0.5.3;
pragma experimental ABIEncoderV2;


/**
 * @title JeuneDiplome
 * @dev vérification de l’authenticité des diplômes délivrés par les établissements d’enseignement supérieur
 */
contract JeuneDiplome {
    struct Etablisement {
        string nom_etablisement;
        string type_str;
        string pays;
        string adresse;
        string site_web;
        uint256 id_agent;
    }
    struct Etudiant {
        string Nom;
        string Prenom;
        string Date_naisance;
        string Sexe;
        string Nationalite;
        string Status_civil;
        string Adresse;
        string Courriel;
        string Telephone;
        string Section;
        string Sujet_pfe;
        string Entreprise_stage_pfe;
        string Maitre_stage;
        uint256 Date_debut_stage;
        uint256 Date_fin_stage;
        string Evaluation;
    }
    struct Diplome {
        uint256 id_titulaire;
        string nom_etablisement;
        uint256 id_ees;
        string pays;
        string type_diplome;
        string specialite;
        string mention;
        uint256 date_d_obtention;
    }
    struct Entreprise {
        string Nom;
        string Secteur;
        uint256 Date_Creation;
        string Classification_Taille;
        string Pays;
        string Adresse;
        string Courriel;
        string telephone;
        string Site_web;
    }
    mapping(uint256 => Etablisement) public Etablisements;
    mapping(uint256 => Etudiant) public Etudiants;
    mapping(uint256 => Entreprise) public Entreprises;
    mapping(uint256 => Diplome) public Diplomes;

    function ajouter_etablisement(Etablisement memory e) public {}

    function ajouter_entreprise(Entreprise memory e) public {}

    function ajouter_etudiant(Etudiant memory e) public {}

    function ajouter_diplome(Diplome memory d) public {}

    function evaluer(Etudiant memory e, Diplome memory d) public {}

    function verifier(Diplome memory d) public view returns (bool) {}
}
