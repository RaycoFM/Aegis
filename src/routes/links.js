const express = require('express');
const router = express.Router();

const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

const LocalStrategy = require('passport-local').Strategy;
const helpers = require('../lib/helpers');


router.get('/add', isLoggedIn, (req, res) => {
    res.render('links/add');
});

router.get('/profile/:idjugador', isLoggedIn, async(req, res) => {

    const { idjugador } = req.params;

    const perfil = await pool.query('SELECT * FROM perfil WHERE idjugador = ?', [idjugador]);
    res.render('links/profile', { perfil })
});

router.get('/aegis/:idjugador', isLoggedIn, async(req, res) => {

    const { idjugador } = req.params;

    const heronames = await pool.query('SELECT heroname FROM heroes order by heroname');

    const user = await pool.query('SELECT * FROM users WHERE idjugador = ?', [idjugador]);

    res.render('links/aegis', { heronames })
});

router.post('/profile/:idjugador', isLoggedIn, async(req, res) => {

    const { idjugador } = req.params;

    const { Cristal } = req.body;

    const { TowerKing } = req.body;
    const { TowerHypogean } = req.body;
    const { TowerCelestial } = req.body;
    const { TowerMauler } = req.body;
    const { TowerGraveborn } = req.body;
    const { TowerWilder } = req.body;
    const { TowerLight } = req.body;

    const { Support } = req.body;
    const { Mage } = req.body;
    const { Warrior } = req.body;
    const { Tank } = req.body;
    const { Ranger } = req.body;

    const updPerfil = {
        idjugador,
        Mage,
        Ranger,
        Support,
        Tank,
        Warrior,
        Cristal,
        TowerKing,
        TowerCelestial,
        TowerGraveborn,
        TowerHypogean,
        TowerLight,
        TowerMauler,
        TowerWilder
    };

    if (typeof Cristal !== 'undefined') {

        const result1 = await pool.query('UPDATE perfil SET cristal = ? WHERE idjugador = ?', [Cristal, idjugador]);
        req.flash('success', 'The Resonating Crystal successfully update.');
        res.redirect('/links/profile/' + idjugador);

    } else
    if (typeof TowerKing !== 'undefined' || typeof TowerHypogean !== 'undefined' || typeof TowerCelestial !== 'undefined' || typeof TowerMauler !== 'undefined' || typeof TowerGraveborn !== 'undefined' || typeof TowerWilder !== 'undefined' || typeof TowerLight !== 'undefined') {

        const result1 = await pool.query('UPDATE perfil SET king = ?, celestial = ?, graveborn = ?, hypogean = ?, light = ?, mauler = ?, wilder = ? WHERE idjugador = ? ', [TowerKing, TowerCelestial, TowerGraveborn, TowerHypogean, TowerLight, TowerMauler, TowerWilder, idjugador]);
        req.flash('success', 'The Tower successfully updated ');
        res.redirect('/links/profile/' + idjugador);

    } else {

        const result1 = await pool.query('UPDATE perfil SET mage = ?, ranger = ?, support = ?, tank = ?, warrior = ? WHERE idjugador = ? ', [Mage, Ranger, Support, Tank, Warrior, idjugador]);
        req.flash('success', 'The Elder Tree successfully updated ');
        res.redirect('/links/profile/' + idjugador);

    }


});

router.get('/setting', isLoggedIn, async(req, res) => {

    res.render('links/setting')
});

router.post('/adduser', isLoggedIn, async(req, res) => {

    const { idjugador } = req.body;
    const { username } = req.body;
    const { password } = req.body;
    var { admin } = req.body;
    var { aegis } = req.body;

    if (admin) {
        admin = 1;
    } else {
        admin = 0;
    }
    const newUser = {
        username,
        password,
        idjugador,
        aegis,
        admin
    };

    newUser.password = await helpers.encryptPassword(password);



    const result1 = await pool.query('INSERT INTO users SET ? ', [newUser]);

    const heroes = await pool.query('SELECT * FROM heroes');
    const cant = await pool.query('SELECT COUNT(*) FROM heroes');

    const artefacto = "0";
    const artefactovalue = "Dura's Blade";
    const ascension = "Not Acquired";
    const star = "A0";
    const engravings = "0";
    const fi = "0";
    const si = "0";
    const head = "Vacio";
    const body = "Vacio";
    const boots = "Vacio";
    const weapon = "Vacio";

    const cristal = "0";

    const king = "0";
    const hypogean = "0";
    const celestial = "0";
    const mauler = "0";
    const graveborn = "0";
    const wilder = "0";
    const light = "0";

    const support = "0";
    const mage = "0";
    const warrior = "0";
    const tank = "0";
    const ranger = "0";

    const newPerfil = {
        idjugador,
        mage,
        ranger,
        support,
        tank,
        warrior,
        cristal,
        king,
        celestial,
        graveborn,
        hypogean,
        light,
        mauler,
        wilder
    };

    const result3 = await pool.query('INSERT INTO perfil SET ?', [newPerfil]);

    for (let i = 0; i < heroes.length; i++) {

        //req.flash('success', ' Probando');

        const heroname = heroes[i].heroname;
        const clase = heroes[i].clas;
        const faction = heroes[i].faction;
        const roll = heroes[i].roll;
        const attribute = heroes[i].attribute;

        const newCard = {
            idjugador,
            heroname,
            artefacto,
            artefactovalue,
            ascension,
            star,
            clase,
            faction,
            engravings,
            fi,
            si,
            head,
            body,
            boots,
            weapon,
            roll,
            attribute
        };

        const result2 = await pool.query('INSERT INTO card SET ?', [newCard]);
    }



    res.redirect('setting');
});


router.post('/modifyuser', isLoggedIn, async(req, res) => {

    const { idjugador } = req.body;
    var { admin } = req.body;
    var { aegis } = req.body;

    if (admin) {
        admin = 1;
    } else {
        admin = 0;
    }

    //const id = await pool.query('SELECT id FROM users WHERE idgugador = ?', [idjugador]);
    await pool.query('UPDATE users SET aegis = ?, admin = ? WHERE (idjugador = ?);', [aegis, admin, idjugador]);

    res.redirect('setting');
});


router.post('/addhero', isLoggedIn, async(req, res) => {

    const { heroname } = req.body;
    const { clas } = req.body;
    const { faction } = req.body;
    const { roll } = req.body;
    const { attribute } = req.body;
    const { si } = "";
    const { fi } = "";
    const { engravings } = "";


    const artefacto = "0";
    const artefactovalue = "Dura's Blade";
    const ascension = "Not Acquired";
    const star = "A0";
    /*const engravingscard = "0";
    const ficard = "0";
    const sicard = "0";*/
    const head = "Vacio";
    const body = "Vacio";
    const boots = "Vacio";
    const weapon = "Vacio";

    const newHero = {
        heroname,
        clas,
        faction,
        roll,
        attribute,
        si,
        fi,
        engravings
    };

    newHero.si = newHero.heroname;
    newHero.fi = newHero.heroname;
    newHero.engravings = newHero.clas;
    const result = await pool.query('INSERT INTO heroes SET ?', [newHero]);


    const user = await pool.query('SELECT * FROM users');



    const clase = clas;
    for (let i = 0; i < user.length; i++) {

        //req.flash('success', ' Probando');

        const idjugador = user[i].idjugador;
        const engravings = "0";
        const fi = "0";
        const si = "0";


        const newCard = {
            idjugador,
            heroname,
            artefacto,
            artefactovalue,
            ascension,
            star,
            clase,
            faction,
            engravings,
            fi,
            si,
            head,
            body,
            boots,
            weapon,
            roll,
            attribute
        };

        const result2 = await pool.query('INSERT INTO card SET ?', [newCard]);
    }

    res.redirect('setting');
});




router.post('/add', isLoggedIn, async(req, res) => {
    const { title, url, description } = req.body;
    const newLink = {
        title,
        url,
        description,
        user_id: req.user.id
    };

    //await pool.query('insert into links (title, url, description) values (?, ?, ?)', [newLink.title, newLink.url, newLink.description]);
    await pool.query('INSERT INTO links SET ?', [newLink]);
    req.flash('success', 'Enlace guardado correctamente.');
    res.redirect('/heroes');
});

router.get('/', isLoggedIn, async(req, res) => {
    const links = await pool.query('SELECT * FROM links WHERE user_id = ?', [req.user.id]);
    res.render('links/list', { links })
});

router.get('/delete/:id', isLoggedIn, async(req, res) => {
    const { id } = req.params;
    await pool.query('DELETE FROM links WHERE id = ?', [id]);
    req.flash('success', 'Enlace eliminado correctamente.');
    res.redirect('/heroes');
});

router.get('/edit/:id', isLoggedIn, async(req, res) => {
    const { id } = req.params;
    const links = await pool.query('SELECT * FROM links WHERE id = ?', [id]);
    res.render('links/edit', { link: links[0] });
});

router.post('/edit/:faction/:heroname', isLoggedIn, async(req, res) => {

    const { heroname } = req.params;
    const { faction } = req.params;
    const idjugador = req.user.idjugador;

    const { ascension } = req.body;
    const { star } = req.body;
    const { engravings } = req.body;
    const { si } = req.body;
    const { fi } = req.body;
    const { artefactovalue } = req.body;
    const { artefacto } = req.body;
    const { head } = req.body;
    const { body } = req.body;
    const { weapon } = req.body;
    const { boots } = req.body;

    var Star = "";
    var Head = "";
    var Body = "";
    var Weapon = "";
    var Boots = "";

    if (head.split(" ")[0] == "Tier")
        if (head.split(" ")[1] == "0")
            Head = "head_M";
        else
            Head = "head_M" + head.split(" ")[1];
    else
        Head = head;

    if (body.split(" ")[0] == "Tier")
        if (body.split(" ")[1] == "0")
            Body = "body_M";
        else
            Body = "body_M" + body.split(" ")[1];
    else
        Body = body;

    if (weapon.split(" ")[0] == "Tier")
        if (weapon.split(" ")[1] == "0")
            Weapon = "weapon_M";
        else
            Weapon = "weapon_M" + weapon.split(" ")[1];
    else
        Weapon = weapon;

    if (boots.split(" ")[0] == "Tier")
        if (boots.split(" ")[1] == "0")
            Boots = "boots_M";
        else
            Boots = "boots_M" + boots.split(" ")[1];
    else
        Boots = boots;


    if (parseInt(engravings) < 30) {
        Star = "A" + star;
    } else
    if (parseInt(engravings) >= 30 && parseInt(engravings) < 60) {
        Star = "N" + star;
    } else
    if (parseInt(engravings) >= 60 && parseInt(engravings) < 80) {
        Star = "R" + star;
    } else
    if (parseInt(engravings) >= 80) {
        Star = "D" + star;
    }

    if (star == "" || star == "0") {
        Star = "A0";
    }



    //await pool.query('UPDATE links set ? WHERE id = ?', [newLink, id]);
    await pool.query('UPDATE card SET artefacto = ?, artefactovalue = ?, ascension = ?, star = ?, engravings = ?, fi = ?, si = ?, head = ?, body = ?, boots = ?, weapon = ? WHERE (idjugador = ? and heroname = ?);', [artefacto, artefactovalue, ascension, Star, engravings, fi, si, Head, Body, Boots, Weapon, idjugador, heroname]);


    req.flash('success', req.user.username + ' has actualizado a ' + heroname + ' correctamente. ');
    res.redirect('/heroes/' + faction + "/" + req.user.idjugador);
});



module.exports = router;