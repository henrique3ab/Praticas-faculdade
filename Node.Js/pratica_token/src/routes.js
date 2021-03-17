import { Router } from 'express';
import UsuarioController from './controllers/UsuarioController';
import sessionController from './controllers/session_controller';
const routes = new Router();
 
routes.get('/', (req, res) => {
  res.send('Opa!')
});
//Criar as rotas de usuario
//get => index e show
routes.post('/usuarios', UsuarioController.store);
 //put => update
 //delete => destroy

 //criar as rotas de sessão
 routes.post('/sessions', UsuarioController.store);
export default routes;