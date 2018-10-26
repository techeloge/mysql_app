# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "contact", id: :integer, comment: "pk num auto", unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "ancien_numero", limit: 80
    t.integer "ref_id_civilite", limit: 1, default: 22, comment: "civilite lien avec ref_civilites", unsigned: true
    t.string "prenom", limit: 50
    t.string "nom_fam", limit: 50, comment: "nom de famille formatage auto en capitales"
    t.string "raison_sociale", limit: 150
    t.date "date_creation"
    t.date "date_naissance"
    t.date "date_modif"
    t.date "date_deces"
    t.string "operateur", limit: 10
    t.string "op_modif", limit: 50
    t.string "suspension", limit: 10
    t.string "cat_recus", limit: 10, default: "OUI"
    t.string "suspension_prel", limit: 10
    t.string "code_origine", limit: 50
    t.text "commentaire"
    t.text "commentaire_prel", limit: 16777215
    t.boolean "doublon_possible", default: false
    t.integer "ref_id_import", unsigned: true
    t.text "x_match"
    t.string "x_match_prenom", limit: 150
    t.string "x_nom", limit: 100, comment: "champ calculé\r\nConcaténation de la rasion sociale et/ou de la civilité, du nom de famille et du prénom"
    t.text "x_img_vir", limit: 16777215
    t.text "x_img_prel", limit: 16777215
    t.string "particule", limit: 12
    t.integer "id_utilisateur", limit: 3, unsigned: true
    t.datetime "date_focus"
    t.string "canal_recu", limit: 30
    t.integer "ref_id_groupe", unsigned: true
    t.integer "ref_id_statut", unsigned: true
    t.integer "ref_id_Association"
    t.integer "avec_mail"
    t.integer "avec_tel"
    t.string "Liste_Assoc", limit: 100
    t.integer "Adherent"
    t.string "CP", limit: 50
    t.integer "ref_id_parrain"
    t.integer "ref_id_metier"
    t.integer "ref_id_niveau4"
    t.integer "Physique_moral", limit: 2
    t.integer "ref_id_fonction"
    t.string "id_web", limit: 50
    t.string "password", limit: 50
    t.integer "ref_id_type_RS"
    t.boolean "anonyme", default: false
    t.integer "Tuteur"
    t.integer "id_bonus_code"
    t.string "raison_sociale2", limit: 150
    t.integer "comite_dep"
    t.integer "num_circ", limit: 1
    t.string "dept_election", limit: 50
    t.string "type_c", limit: 18
    t.string "testateur", limit: 50
    t.string "testateur_contact", limit: 50
    t.string "identifiant_ecole", limit: 50
    t.string "origine_import", limit: 50
    t.integer "maj_oui_non", limit: 1, unsigned: true
    t.integer "annee_promesse", limit: 2, unsigned: true
    t.text "suivi_par"
    t.integer "score_isf", limit: 2, unsigned: true
    t.string "sexe", limit: 1
    t.string "sous_type", limit: 50
    t.integer "etat_profession", limit: 2, unsigned: true
    t.integer "age"
    t.integer "Ref_identite"
    t.string "nom_animal_compagnie"
    t.string "nom_jeune_fille", limit: 50
    t.date "date_signature"
    t.date "date_debut_parrain"
    t.date "date_fin_parrain"
    t.index ["ancien_numero"], name: "ancien_numero"
    t.index ["code_origine"], name: "code_origine"
    t.index ["nom_fam"], name: "nom_fam"
    t.index ["ref_id_civilite"], name: "ref_id_civilite"
    t.index ["ref_id_import"], name: "ref_id_import"
    t.index ["suspension"], name: "suspension"
  end

  create_table "operateurs", id: :integer, limit: 1, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "code", limit: 10
    t.string "nom", limit: 50
    t.integer "millesime", limit: 2
    t.integer "ref_id_lot"
    t.string "mot_de_passe", limit: 20
    t.datetime "date_creation"
    t.datetime "date_modif"
    t.datetime "date_suppression"
    t.string "op", limit: 50
    t.string "op_modif", limit: 50
    t.binary "chemin_photo"
    t.text "txt_droits"
    t.integer "enligne", limit: 1, default: 0, unsigned: true
    t.integer "ref_id_contact", comment: "Dernier contact vu par cet opérateur", unsigned: true
    t.string "email", limit: 50
    t.integer "ref_id_Association"
    t.integer "multi_assoc"
    t.integer "Eloge", limit: 2
    t.integer "Comite_departemental"
    t.integer "ref_id_suivi_par", unsigned: true
    t.integer "Ref_identite"
    t.string "crypted_pw"
    t.integer "temp_pw", default: 0
    t.date "pw_generated_date"
    t.integer "ref_id_region"
    t.index ["nom"], name: "nom"
  end

end
