const express = require('express');
const router = express.Router();

const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

const LocalStrategy = require('passport-local').Strategy;
const helpers = require('../lib/helpers');


var ruleshero = [];
var playerruleshero = [];
var numhero = 0;


router.get('/add', isLoggedIn, (req, res) => {
    res.render('links/add');
});

router.get('/profile/:idjugador', isLoggedIn, async(req, res) => {

    const { idjugador } = req.params;

    const perfil = await pool.query('SELECT * FROM perfil WHERE idjugador = ?', [idjugador]);

    res.render('links/profile', perfil[0])
});

router.get('/search', isLoggedIn, async(req, res) => {

    const usuarios = await pool.query('SELECT username,idjugador FROM users order by username');

    res.render('links/search', { usuarios })
});

router.post('/search', isLoggedIn, async(req, res) => {

    const usuarios = await pool.query('SELECT username,idjugador FROM users order by username');


    const { usuario } = req.body;

    const idjugador = usuario.split(' - ')[1];


    const card = await pool.query('SELECT * FROM card WHERE idjugador = ? order by heroname', [idjugador]);

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


    res.render('links/search', { usuarios, card, usuario })

});

router.post('/search1', isLoggedIn, async(req, res) => {

    usuarios = await pool.query('SELECT username,idjugador FROM users WHERE aegis = 1 order by username');
    res.render('links/search', { usuarios })
});

router.post('/search2', isLoggedIn, async(req, res) => {

    usuarios = await pool.query('SELECT username,idjugador FROM users WHERE aegis = 2 order by username');
    res.render('links/search', { usuarios })
});

router.post('/search3', isLoggedIn, async(req, res) => {

    usuarios = await pool.query('SELECT username,idjugador FROM users WHERE aegis = 3 order by username');
    res.render('links/search', { usuarios })
});

router.post('/Lightbearer/:usuario', isLoggedIn, async(req, res) => {

    const { usuario } = req.params;

    const idjugador = usuario.split(' - ')[1];


    const card = await pool.query('SELECT * FROM card WHERE faction = "Lightbearer" and idjugador = ? order by heroname', [idjugador]);

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

    res.render('links/search', { usuario, card })
});

router.post('/Mauler/:usuario', isLoggedIn, async(req, res) => {

    const { usuario } = req.params;

    const idjugador = usuario.split(' - ')[1];


    const card = await pool.query('SELECT * FROM card WHERE faction = "Mauler" and idjugador = ? order by heroname', [idjugador]);

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

    res.render('links/search', { usuario, card })
});

router.post('/Wilder/:usuario', isLoggedIn, async(req, res) => {

    const { usuario } = req.params;

    const idjugador = usuario.split(' - ')[1];


    const card = await pool.query('SELECT * FROM card WHERE faction = "Wilder" and idjugador = ? order by heroname', [idjugador]);

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

    res.render('links/search', { usuario, card })
});

router.post('/Graveborn/:usuario', isLoggedIn, async(req, res) => {

    const { usuario } = req.params;

    const idjugador = usuario.split(' - ')[1];


    const card = await pool.query('SELECT * FROM card WHERE faction = "Graveborn" and idjugador = ? order by heroname', [idjugador]);

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

    res.render('links/search', { usuario, card })
});

router.post('/Celestial/:usuario', isLoggedIn, async(req, res) => {

    const { usuario } = req.params;

    const idjugador = usuario.split(' - ')[1];


    const card = await pool.query('SELECT * FROM card WHERE faction = "Celestial" and idjugador = ? order by heroname', [idjugador]);

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

    res.render('links/search', { usuario, card })
});

router.post('/Hypogean/:usuario', isLoggedIn, async(req, res) => {

    const { usuario } = req.params;

    const idjugador = usuario.split(' - ')[1];


    const card = await pool.query('SELECT * FROM card WHERE faction = "Hypogean" and idjugador = ? order by heroname', [idjugador]);

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

    res.render('links/search', { usuario, card })
});

router.post('/Dimensional/:usuario', isLoggedIn, async(req, res) => {

    const { usuario } = req.params;

    const idjugador = usuario.split(' - ')[1];


    const card = await pool.query('SELECT * FROM card WHERE faction = "Dimensional" and idjugador = ? order by heroname', [idjugador]);

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

    res.render('links/search', { usuario, card })
});


router.get('/aegis', isLoggedIn, async(req, res) => {


    ruleshero = [];
    playerruleshero = [];
    numhero = 0;

    const heronames = await pool.query('SELECT heroname FROM heroes order by heroname');


    res.render('links/aegis', { heronames })
});

router.post('/aegis', isLoggedIn, async(req, res) => {

    playerruleshero = [];

    var { heroname } = req.body;
    var { ascension } = req.body;
    var { star } = req.body;
    var { engravings } = req.body;
    var { si } = req.body;
    var { fi } = req.body;
    var { aegis1 } = req.body;
    var { aegis2 } = req.body;
    var { aegis3 } = req.body;
    var aegis = "";

    var nivelascension = ascension.split('-')[1];
    var ascensionreal = ascension.split('-')[0];

    var queryhero1;
    var queryhero2;
    var queryhero3;
    var starquery = '%' + star + '%';

    var queryuser = await pool.query('SELECT * FROM users');

    numhero += 1;

    if (!aegis1 && !aegis2 && !aegis3) {
        aegis = "1 2 3";
    }

    var rulehero = {
        numhero,
        heroname,
        ascensionreal,
        nivelascension,
        star,
        engravings,
        si,
        fi,
        aegis
    };

    ruleshero.push(rulehero);

    //await pool.query('UPDATE users SET aegis = ?, admin = ? WHERE (idjugador = ?);', [aegis, admin, idjugador]);

    for (let c = 0; c < queryuser.length; c++) {

        var evaluar = [];
        var username = queryuser[c].username;
        var cont = 0;

        for (let i = 0; i < ruleshero.length; i++) {


            if (!ruleshero[i].aegis1 && !ruleshero[i].aegis2 && !ruleshero[i].aegis3) {
                ruleshero[i].aegis1 = true;
                ruleshero[i].aegis2 = true;
                ruleshero[i].aegis3 = true;
            }

            if (ruleshero[i].aegis1) {
                queryhero1 = await pool.query('SELECT * FROM users INNER JOIN card ON users.idjugador = card.idjugador and card.heroname=? and card.engravings>=? and card.si>=? and card.fi>=?  and users.aegis= ?;', [ruleshero[i].heroname, ruleshero[i].engravings, ruleshero[i].si, ruleshero[i].fi, '1']);
            }
            if (ruleshero[i].aegis2) {
                queryhero2 = await pool.query('SELECT * FROM users INNER JOIN card ON users.idjugador = card.idjugador and card.heroname=? and card.engravings>=? and card.si>=? and card.fi>=?  and users.aegis= ?;', [ruleshero[i].heroname, ruleshero[i].engravings, ruleshero[i].si, ruleshero[i].fi, '2']);
            }
            if (ruleshero[i].aegis3) {
                queryhero3 = await pool.query('SELECT * FROM users INNER JOIN card ON users.idjugador = card.idjugador and card.heroname=? and card.engravings>=? and card.si>=? and card.fi>=?  and users.aegis= ?;', [ruleshero[i].heroname, ruleshero[i].engravings, ruleshero[i].si, ruleshero[i].fi, '3']);
            }

            if (queryhero1 != null) {
                for (let k = 0; k < queryhero1.length; k++) {

                    if (ruleshero[i].nivelascension <= queryhero1[k].ascension.split('-')[1]) {

                        if (ruleshero[i].nivelascension == '7') {

                            if (ruleshero[i].star <= queryhero1[k].star.substr(1, 1)) {
                                queryhero1[k].ascension = queryhero1[k].ascension.split('-')[0];
                            } else {
                                var item = queryhero1.indexOf(k);
                                queryhero1.splice(item, 1);
                                k = k - 1;
                            }
                        }

                    } else {
                        var item = queryhero1.indexOf(k);
                        queryhero1.splice(item, 1);
                        k = k - 1;

                    }

                }
            }


            if (queryhero2 != null) {
                for (let k = 0; k < queryhero2.length; k++) {
                    if (ruleshero[i].nivelascension <= queryhero2[k].ascension.split('-')[1]) {

                        if (ruleshero[i].nivelascension == '7') {
                            if (ruleshero[i].star <= queryhero2[k].star.substr(1, 1)) {
                                queryhero2[k].ascension = queryhero2[k].ascension.split('-')[0];
                            } else {
                                var item = queryhero2.indexOf(k);
                                queryhero2.splice(item, 1);
                                k = k - 1;
                            }
                        }

                    } else {
                        var item = queryhero2.indexOf(k);
                        queryhero2.splice(item, 1);
                        k = k - 1;
                    }


                }
            }

            if (queryhero3 != null) {
                for (let k = 0; k < queryhero3.length; k++) {
                    if (ruleshero[i].nivelascension <= queryhero3[k].ascension.split('-')[1]) {
                        if (ruleshero[i].nivelascension == '7') {
                            if (ruleshero[i].star <= queryhero3[k].star.substr(1, 1)) {
                                queryhero3[k].ascension = queryhero3[k].ascension.split('-')[0];
                            } else {
                                var item = queryhero3.indexOf(k);
                                queryhero3.splice(item, 1);
                                k = k - 1;
                            }
                        }

                    } else {
                        var item = queryhero3.indexOf(k);
                        queryhero3.splice(item, 1);
                        k = k - 1;
                    }


                }
            }

            var cumple = false;

            if (queryuser[c].aegis == '1') {
                for (let k = 0; k < queryhero1.length; k++) {
                    if (queryhero1[k].idjugador == queryuser[c].idjugador) {
                        cumple = true;
                        cont = cont + 1;
                        break;
                    }
                }
            }

            if (queryuser[c].aegis == '2') {
                for (let k = 0; k < queryhero2.length; k++) {
                    if (queryhero2[k].idjugador == queryuser[c].idjugador) {
                        cumple = true;
                        cont = cont + 1;
                        break;
                    }
                }
            }

            if (queryuser[c].aegis == '3') {
                for (let k = 0; k < queryhero3.length; k++) {
                    if (queryhero3[k].idjugador == queryuser[c].idjugador) {
                        cumple = true;
                        cont = cont + 1;
                        break;
                    }
                }
            }

            var datarule = {
                cumple
            };

            evaluar.push(datarule);
        }

        var porciento = cont / ruleshero.length * 100;

        var player = {
            username,
            porciento,
            evaluar
        };


        playerruleshero.push(player);
    }

    console.log(playerruleshero);

    const heronames = await pool.query('SELECT heroname FROM heroes order by heroname');

    res.render('links/aegis', { heronames, ruleshero, playerruleshero })

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


    const user = await pool.query('SELECT * FROM users');
    // Verificar si el jugador existe

    var existe = false;
    var name = ""
    for (let i = 0; i < user.length; i++) {
        if (user[i].idjugador == idjugador) {
            existe = true;
            name = user[i].username;
        }
    }

    if (existe) {
        req.flash('message', 'El jugador con esa id ya existe bajo el nombre de ' + name);
    } else {

        const result1 = await pool.query('INSERT INTO users SET ? ', [newUser]);

        const heroes = await pool.query('SELECT * FROM heroes');
        const cant = await pool.query('SELECT COUNT(*) FROM heroes');

        const artefacto = "0";
        const artefactovalue = "Dura's Blade";
        const ascension = "Not Acquired-0";
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
    }

    res.redirect('setting');
});


router.post('/modifyuser', isLoggedIn, async(req, res) => {

    const { idjugador } = req.body;
    var { admin } = req.body;
    var { deleteuser } = req.body;
    var { aegis } = req.body;

    if (admin) {
        admin = 1;
    } else {
        admin = 0;
    }

    if (deleteuser) {
        await pool.query('DELETE FROM users WHERE (id > 0 && idjugador = ?);', [idjugador]);
        await pool.query('DELETE FROM card WHERE (id > 0 && idjugador = ?);', [idjugador]);
    } else {
        await pool.query('UPDATE users SET aegis = ?, admin = ? WHERE (idjugador = ?);', [aegis, admin, idjugador]);
    }

    //const id = await pool.query('SELECT id FROM users WHERE idgugador = ?', [idjugador]);

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
    if (ascension.split('-')[0] != "Ascended") {
        Star = "A0";

    }

    console.log("---" + ascension + "------");

    var ascensionreal = "";
    if (ascension.includes("Ascended")) {
        ascensionreal = "Ascended-7";
    }


    console.log(ascensionreal);




    //await pool.query('UPDATE links set ? WHERE id = ?', [newLink, id]);
    await pool.query('UPDATE card SET artefacto = ?, artefactovalue = ?, ascension = ?, star = ?, engravings = ?, fi = ?, si = ?, head = ?, body = ?, boots = ?, weapon = ? WHERE (idjugador = ? and heroname = ?);', [artefacto, artefactovalue, ascensionreal, Star, engravings, fi, si, Head, Body, Boots, Weapon, idjugador, heroname]);


    req.flash('success', req.user.username + ' has actualizado a ' + heroname + ' correctamente. ');
    res.redirect('/heroes/' + faction + "/" + req.user.idjugador);
});



module.exports = router;