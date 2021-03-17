import express from 'express';
import mongoose from 'moongose';
import routes from './routes.js';

class app{
    constructor(){
        this.app = exprees();

        mongoose.set("useNewUrlParser", true);
        mongoose.set("useFindAndModify", false);
        mongoose.set("useCreateIndex", true);
        mongoose.set("useUnifiedTopology", true);

        mongoose.connect(/**colocar aqui a configuração do mogodb*/);
        
        this.routes();
    }

    routes(){
        this.app.use(routes);
    }
}

export default new App().app; //module.exports = new App().app;