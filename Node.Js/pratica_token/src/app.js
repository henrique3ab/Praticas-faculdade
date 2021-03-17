import express from 'express';
import mongoose from 'mongoose';
 
import routes  from './routes';
 
class App{
  constructor(){
    this.app = express();
 
    mongoose.set("useNewUrlParser", true);
    mongoose.set("useFindAndModify", false);
    mongoose.set("useCreateIndex", true);
    mongoose.set("useUnifiedTopology", true);
    mongoose.connect("mongodb+srv://SD202002:<password>@cluster0.inpvq.mongodb.net/<dbname>?retryWrites=true&w=majority");
 
    this.middlewares();
    this.routes();
  }
 
  middlewares(){
    this.app.use(express.json());
  }
 
  routes() {
    this.app.use(routes);
  }
}
 
export default new App().app;