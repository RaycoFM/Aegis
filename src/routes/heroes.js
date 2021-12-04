const express = require('express');
const router = express.Router();

const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

const axios = require('axios');
var hero = '';
var prueba = '';
// más codigo ....





router.get('/Lightbearer/:idjugador', isLoggedIn, async(req, res) => {

    const { idjugador } = req.params;

    const card = await pool.query('SELECT * FROM card WHERE faction = "Lightbearer" and idjugador = ? order by heroname', [idjugador]);
    var ordenar = card;

    var ascen = [];
    for (let i = 0; i < ordenar.length; i++) {
        ascen.push(ordenar[i].ascension);
        ordenar[i].ascension = ordenar[i].ascension.split('-')[1];
        ordenar[i].ascension += ordenar[i].star.substr(1, 1);
    }

    var temp;
    for (let i = 0; i < ordenar.length - 1; i++) {
        for (let c = i + 1; c < ordenar.length; c++) {
            if (ordenar[i].ascension < ordenar[c].ascension) {

                temp = ordenar[i];
                ordenar[i] = ordenar[c];
                ordenar[c] = temp;

                temp = ascen[i];
                ascen[i] = ascen[c];
                ascen[c] = temp;

            }
        }
    }
    for (let i = 0; i < ascen.length; i++) {
        card[i].ascension = ascen[i];

    }


    for (let i = 0; i < card.length; i++) {
        card[i].ascension = card[i].ascension.split('-')[0];
        if (card[i].ascension == "Not Acquired") {
            card[i].star = "Not Acquired";
            card[i].head = "Vacio"
            card[i].body = "Vacio"
            card[i].boots = "Vacio"
            card[i].weapon = "Vacio"
            card[i].si = "0"
            card[i].fi = "0"
            card[i].engravings = "0"
            card[i].artefacto = "0"
        }
    }

    res.render('links/heroes', { card })
});

router.get('/Mauler/:idjugador', isLoggedIn, async(req, res) => {

    const { idjugador } = req.params;

    const card = await pool.query('SELECT * FROM card WHERE faction = "Mauler" and idjugador = ? order by heroname', [idjugador]);

    var ordenar = card;
    var ascen = [];
    for (let i = 0; i < ordenar.length; i++) {
        ascen.push(ordenar[i].ascension);
        ordenar[i].ascension = ordenar[i].ascension.split('-')[1];
        ordenar[i].ascension += ordenar[i].star.substr(1, 1);
    }

    var temp;
    for (let i = 0; i < ordenar.length - 1; i++) {
        for (let c = i + 1; c < ordenar.length; c++) {
            if (ordenar[i].ascension < ordenar[c].ascension) {
                temp = ordenar[i];
                ordenar[i] = ordenar[c];
                ordenar[c] = temp;

                temp = ascen[i];
                ascen[i] = ascen[c];
                ascen[c] = temp;

            }
        }
    }
    for (let i = 0; i < ascen.length; i++) {
        card[i].ascension = ascen[i];

    }

    for (let i = 0; i < card.length; i++) {
        card[i].ascension = card[i].ascension.split('-')[0];
        if (card[i].ascension == "Not Acquired") {
            card[i].star = "Not Acquired";
            card[i].head = "Vacio"
            card[i].body = "Vacio"
            card[i].boots = "Vacio"
            card[i].weapon = "Vacio"
            card[i].si = "0"
            card[i].fi = "0"
            card[i].engravings = "0"
            card[i].artefacto = "0"
        }
    }

    res.render('links/heroes', { card })
});

router.get('/Wilder/:idjugador', isLoggedIn, async(req, res) => {

    const { idjugador } = req.params;


    const card = await pool.query('SELECT * FROM card WHERE faction = "Wilder" and idjugador = ? order by heroname', [idjugador]);

    var ordenar = card;
    var ascen = [];
    for (let i = 0; i < ordenar.length; i++) {
        ascen.push(ordenar[i].ascension);
        ordenar[i].ascension = ordenar[i].ascension.split('-')[1];
        ordenar[i].ascension += ordenar[i].star.substr(1, 1);
    }

    var temp;
    for (let i = 0; i < ordenar.length - 1; i++) {
        for (let c = i + 1; c < ordenar.length; c++) {
            if (ordenar[i].ascension < ordenar[c].ascension) {
                temp = ordenar[i];
                ordenar[i] = ordenar[c];
                ordenar[c] = temp;

                temp = ascen[i];
                ascen[i] = ascen[c];
                ascen[c] = temp;

            }
        }
    }
    for (let i = 0; i < ascen.length; i++) {
        card[i].ascension = ascen[i];

    }

    for (let i = 0; i < card.length; i++) {
        card[i].ascension = card[i].ascension.split('-')[0];
        if (card[i].ascension == "Not Acquired") {
            card[i].star = "Not Acquired";
            card[i].head = "Vacio"
            card[i].body = "Vacio"
            card[i].boots = "Vacio"
            card[i].weapon = "Vacio"
            card[i].si = "0"
            card[i].fi = "0"
            card[i].engravings = "0"
            card[i].artefacto = "0"
        }
    }

    res.render('links/heroes', { card })
});

router.get('/Graveborn/:idjugador', isLoggedIn, async(req, res) => {

    const { idjugador } = req.params;


    const card = await pool.query('SELECT * FROM card WHERE faction = "Graveborn" and idjugador = ? order by heroname', [idjugador]);

    var ordenar = card;
    var ascen = [];
    for (let i = 0; i < ordenar.length; i++) {
        ascen.push(ordenar[i].ascension);
        ordenar[i].ascension = ordenar[i].ascension.split('-')[1];
        ordenar[i].ascension += ordenar[i].star.substr(1, 1);
    }

    var temp;
    for (let i = 0; i < ordenar.length - 1; i++) {
        for (let c = i + 1; c < ordenar.length; c++) {
            if (ordenar[i].ascension < ordenar[c].ascension) {
                temp = ordenar[i];
                ordenar[i] = ordenar[c];
                ordenar[c] = temp;

                temp = ascen[i];
                ascen[i] = ascen[c];
                ascen[c] = temp;

            }
        }
    }
    for (let i = 0; i < ascen.length; i++) {
        card[i].ascension = ascen[i];

    }

    for (let i = 0; i < card.length; i++) {
        card[i].ascension = card[i].ascension.split('-')[0];
        if (card[i].ascension == "Not Acquired") {
            card[i].star = "Not Acquired";
            card[i].head = "Vacio"
            card[i].body = "Vacio"
            card[i].boots = "Vacio"
            card[i].weapon = "Vacio"
            card[i].si = "0"
            card[i].fi = "0"
            card[i].engravings = "0"
            card[i].artefacto = "0"
        }
    }

    res.render('links/heroes', { card })
});
router.get('/Celestial/:idjugador', isLoggedIn, async(req, res) => {

    const { idjugador } = req.params;


    const card = await pool.query('SELECT * FROM card WHERE faction = "Celestial" and idjugador = ? order by heroname', [idjugador]);

    var ordenar = card;
    var ascen = [];
    for (let i = 0; i < ordenar.length; i++) {
        ascen.push(ordenar[i].ascension);
        ordenar[i].ascension = ordenar[i].ascension.split('-')[1];
        ordenar[i].ascension += ordenar[i].star.substr(1, 1);
    }

    var temp;
    for (let i = 0; i < ordenar.length - 1; i++) {
        for (let c = i + 1; c < ordenar.length; c++) {
            if (ordenar[i].ascension < ordenar[c].ascension) {
                temp = ordenar[i];
                ordenar[i] = ordenar[c];
                ordenar[c] = temp;

                temp = ascen[i];
                ascen[i] = ascen[c];
                ascen[c] = temp;

            }
        }
    }
    for (let i = 0; i < ascen.length; i++) {
        card[i].ascension = ascen[i];

    }

    for (let i = 0; i < card.length; i++) {
        card[i].ascension = card[i].ascension.split('-')[0];
        if (card[i].ascension == "Not Acquired") {
            card[i].star = "Not Acquired";
            card[i].head = "Vacio"
            card[i].body = "Vacio"
            card[i].boots = "Vacio"
            card[i].weapon = "Vacio"
            card[i].si = "0"
            card[i].fi = "0"
            card[i].engravings = "0"
            card[i].artefacto = "0"
        }
    }

    res.render('links/heroes', { card })
});
router.get('/Hypogean/:idjugador', isLoggedIn, async(req, res) => {

    const { idjugador } = req.params;


    const card = await pool.query('SELECT * FROM card WHERE faction = "Hypogean" and idjugador = ? order by heroname', [idjugador]);

    var ordenar = card;
    var ascen = [];
    for (let i = 0; i < ordenar.length; i++) {
        ascen.push(ordenar[i].ascension);
        ordenar[i].ascension = ordenar[i].ascension.split('-')[1];
        ordenar[i].ascension += ordenar[i].star.substr(1, 1);
    }

    var temp;
    for (let i = 0; i < ordenar.length - 1; i++) {
        for (let c = i + 1; c < ordenar.length; c++) {
            if (ordenar[i].ascension < ordenar[c].ascension) {
                temp = ordenar[i];
                ordenar[i] = ordenar[c];
                ordenar[c] = temp;

                temp = ascen[i];
                ascen[i] = ascen[c];
                ascen[c] = temp;

            }
        }
    }
    for (let i = 0; i < ascen.length; i++) {
        card[i].ascension = ascen[i];

    }

    for (let i = 0; i < card.length; i++) {
        card[i].ascension = card[i].ascension.split('-')[0];
        if (card[i].ascension == "Not Acquired") {
            card[i].star = "Not Acquired";
            card[i].head = "Vacio"
            card[i].body = "Vacio"
            card[i].boots = "Vacio"
            card[i].weapon = "Vacio"
            card[i].si = "0"
            card[i].fi = "0"
            card[i].engravings = "0"
            card[i].artefacto = "0"
        }
    }

    res.render('links/heroes', { card })

});
router.get('/Dimensional/:idjugador', isLoggedIn, async(req, res) => {

    const { idjugador } = req.params;


    const card = await pool.query('SELECT * FROM card WHERE faction = "Dimensional" and idjugador = ? order by heroname', [idjugador]);

    var ordenar = card;
    var ascen = [];
    for (let i = 0; i < ordenar.length; i++) {
        ascen.push(ordenar[i].ascension);
        ordenar[i].ascension = ordenar[i].ascension.split('-')[1];
        ordenar[i].ascension += ordenar[i].star.substr(1, 1);
    }

    var temp;
    for (let i = 0; i < ordenar.length - 1; i++) {
        for (let c = i + 1; c < ordenar.length; c++) {
            if (ordenar[i].ascension < ordenar[c].ascension) {
                temp = ordenar[i];
                ordenar[i] = ordenar[c];
                ordenar[c] = temp;

                temp = ascen[i];
                ascen[i] = ascen[c];
                ascen[c] = temp;

            }
        }
    }
    for (let i = 0; i < ascen.length; i++) {
        card[i].ascension = ascen[i];

    }

    for (let i = 0; i < card.length; i++) {
        card[i].ascension = card[i].ascension.split('-')[0];
        if (card[i].ascension == "Not Acquired") {
            card[i].star = "Not Acquired";
            card[i].head = "Vacio"
            card[i].body = "Vacio"
            card[i].boots = "Vacio"
            card[i].weapon = "Vacio"
            card[i].si = "0"
            card[i].fi = "0"
            card[i].engravings = "0"
            card[i].artefacto = "0"
        }
    }

    res.render('links/heroes', { card })
});



router.post('/:faction/:id', isLoggedIn, async(req, res) => {
    const { id } = req.params;
    const { faction } = req.params;
    const idjugador = req.user.idjugador;

    const card = await pool.query('SELECT * FROM card WHERE id = ?', [id]);

    card[0].star = card[0].star.substring(1, 2);
    if (card[0].head == "Vacio") {
        card[0].head = "Vacio"
    } else {
        if (card[0].head != "head_M")
            card[0].head = "Tier " + card[0].head.split("M")[1];
        else
            card[0].head = "Tier 0";

    }
    if (card[0].body == "Vacio") {
        card[0].body = "Vacio"
    } else {
        if (card[0].body != "body_M")
            card[0].body = "Tier " + card[0].body.split("M")[1];
        else
            card[0].body = "Tier 0";
    }
    if (card[0].boots == "Vacio") {
        card[0].boots = "Vacio"
    } else {
        if (card[0].boots != "boots_M")
            card[0].boots = "Tier " + card[0].boots.split("M")[1];
        else
            card[0].boots = "Tier 0";

    }
    if (card[0].weapon == "Vacio") {
        card[0].weapon = "Vacio"
    } else {
        if (card[0].weapon != "weapon_M")
            card[0].weapon = "Tier " + card[0].weapon.split("M")[1];
        else
            card[0].weapon = "Tier 0";

    }

    if (card[0].ascension.split('-')[0] != "Ascended") {
        card[0].star = "0";
    }

    card[0].ascension = card[0].ascension.split('-')[0];




    res.render('links/edit', { card });

    //req.flash('success', card[0].heroname + ' es el nombre de la tarjeta.' + card[0].idjugador + ' es la id del usuario');
    //res.redirect('/heroes/' + faction + "/" + idjugador);
});


module.exports = router;