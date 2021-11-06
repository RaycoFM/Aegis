const express = require('express');
const router = express.Router();

const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;


const helpers = require('../lib/helpers');

passport.use('local.signin', new LocalStrategy({
    usernameField: 'idjugador',
    passwordField: 'password',
    passReqToCallback: true
}, async(req, idjugador, password, done) => {

    const rows = await pool.query('SELECT * FROM users WHERE idjugador = ?', [idjugador]);
    if (rows.length > 0) {

        const user = rows[0];
        const validPassword = await helpers.matchPassword(password, user.password);

        if (validPassword) {
            done(null, user, req.flash('success', 'Welcome ' + user.username));
        } else {
            done(null, false, req.flash('message', 'Incorrect Password'));
        }
    } else {

        return done(null, false, req.flash('message', 'The Player does not  exists'));
    }

}));





passport.serializeUser((user, done) => {
    done(null, user.id);
});

passport.deserializeUser(async(id, done) => {
    const rows = await pool.query('SELECT * FROM users WHERE id = ?', [id]);
    done(null, rows[0]);
});