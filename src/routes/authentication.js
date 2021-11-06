const express = require('express');
const router = express.Router();
const pool = require('../database');

const passport = require('passport');
const helpers = require('../lib/helpers');

const { isLoggedIn, isNotLoggedIn } = require('../lib/auth');



router.get('/signin', isNotLoggedIn, (req, res) => {
    res.render('auth/signin');
});

router.post('/signin', isNotLoggedIn, async(req, res, next) => {

    const { idjugador } = req.body;

    passport.authenticate('local.signin', {
        successRedirect: '/heroes/Lightbearer/' + idjugador,
        failureRedirect: '/signin',
        failureFlash: true
    })(req, res, next);
});

router.get('/password', isNotLoggedIn, (req, res) => {
    res.render('auth/password');
});

router.post('/password', isNotLoggedIn, async(req, res, next) => {

    const { idjugador } = req.body;
    const { password } = req.body;
    const { newpassword } = req.body;

    var newpasswordencrypted = await helpers.encryptPassword(newpassword);
    const rows = await pool.query('SELECT * FROM users WHERE idjugador = ?', [idjugador]);


    if (rows.length > 0) {

        const user = rows[0];
        const validPassword = await helpers.matchPassword(password, user.password);

        if (validPassword) {
            if (newpassword != "") {
                req.flash('success', user.username + ' correct password change ');
                const result1 = await pool.query('UPDATE users SET password = ? WHERE idjugador = ?', [newpasswordencrypted, idjugador]);
                res.redirect('/signin');
            }

        } else {
            req.flash('message', 'Incorrect Password');
            res.redirect('/password');
        }
    } else {

        req.flash('message', 'The Player does not  exists');
        res.redirect('/password');
    }
});


router.get('/logout', isLoggedIn, (req, res) => {
    req.logOut();
    res.redirect('/signin');
});

module.exports = router;