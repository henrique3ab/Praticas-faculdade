import jwt from 'jsonwebtoken';
 
import Usuario from '../models/usuario';
 
class SessionController{
    async store(req, res){
        const { email, senha } = req.body;
        let validou = false;
        const usuario = await Usuario.findOne( { email }, function(err, usuario) {
            if (err) throw err;
        });
 
        if(! usuario)
            return res.status(401).json({erro: "Usuário ou senha não confere."});
 
        validou = await usuario.checkPassword(senha);
        if(! validou)
            return res.status(401).json({erro: "Usuário ou senha não confere."});
 
        return res.json({
            usuario: {
                email: usuario.email,
                nome: usuario.nome
            },
            token: jwt.sign( { id: usuario._id } , 'rfjrfkrekrejk', {expiresIn: '1d', }),
        });
         
    }
}
 
export default new SessionController();

