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
    mapping(uint256 => Etudiant) Etudiants;
    mapping(uint256 => Entreprise) public Entreprises;
    mapping(uint256 => Diplome) public Diplomes;

    function get_Etudiants(uint256 id) public view returns (Etudiant memory) {
        return Etudiants[id];
    }

    uint256 public NbEtablisements;
    uint256 public NbEtudiants;
    uint256 public NbEntreprises;
    uint256 public NbDiplomes;

    constructor() public {
        NbEtablisements = 0;
        NbEtudiants = 0;
        NbEntreprises = 0;
        NbDiplomes = 0;
    }

    function ajouter_etablisement(Etablisement memory e) private {
        NbEtablisements += 1;
        Etablisements[NbEtablisements] = e;
    }

    function ajouter_entreprise(Entreprise memory e) private {
        NbEntreprises += 1;
        Entreprises[NbEntreprises] = e;
    }

    function ajouter_etudiant(Etudiant memory e) private {
        // etablisement
        NbEtudiants += 1;
        Etudiants[NbEtudiants] = e;
    }

    function ajouter_diplome(Diplome memory d) private {
        // etablisement
        NbDiplomes += 1;
        Diplomes[NbDiplomes] = d;
    }

    //
    function ajouter_etablisement(string memory nom) public {
        Etablisement memory e;
        e.nom_etablisement = nom;
        ajouter_etablisement(e);
    }

    function ajouter_entreprise(string memory nom) public {
        Entreprise memory e;
        e.Nom = nom;
        ajouter_entreprise(e);
    }

    function ajouter_etudiant(string memory Nom, string memory Prenom) public {
        Etudiant memory e;
        e.Nom = Nom;
        e.Prenom = Prenom;
        ajouter_etudiant(e);
    }

    function ajouter_diplome(
        uint256 id_titulaire,
        string memory nom_etablisement
    ) public {
        // etablisement
        Diplome memory d;
        d.id_titulaire = id_titulaire;
        d.nom_etablisement = nom_etablisement;
        ajouter_diplome(d);
    }

    // établissement update info titulaire
    function evaluer(
        uint256 etudiantid,
        string memory Sujet_pfe,
        string memory Entreprise_stage_pfe,
        string memory Maitre_stage,
        uint256 Date_debut_stage,
        uint256 Date_fin_stage,
        string memory Evaluation
    ) public {
        Etudiants[etudiantid].Sujet_pfe = Sujet_pfe;
        Etudiants[etudiantid].Entreprise_stage_pfe = Entreprise_stage_pfe;
        Etudiants[etudiantid].Maitre_stage = Maitre_stage;
        Etudiants[etudiantid].Date_debut_stage = Date_debut_stage;
        Etudiants[etudiantid].Date_fin_stage = Date_fin_stage;
        Etudiants[etudiantid].Evaluation = Evaluation;
        // entreprise qui evalue
        // remuneration 15 token
    }

    function verifier(Diplome memory d) public view returns (bool) {
        // entreprise qui verifier
        // frais 10 token
        return Diplomes[diplomeid].exist;
    }
}
// ajout etudiant
//["Nom","Prenom","Date_naisance","Sexe","Nationalite","Status_civil","Adresse","Courriel","Telephone","Section","Sujet_pfe","Entreprise_stage_pfe","Maitre_stage",1,2,"Evaluation"]
