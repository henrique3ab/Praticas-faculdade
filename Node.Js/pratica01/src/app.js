import express from 'express'; //importei o framework express
import routes from'./routes';
class app{
    constructor(){
        this.app = express(); // instanciando app como instacia de express
        this.middlewars();
        this.routes();
    }
    middlewars(){
        this.app.use(express.json());
    }
    routes(){
        this.app.use(routes);
    }
}

export default App().app;