import Usuario from './../models/usuario';
 
class UsuarioController {
    async index(req, res){
        return res.json({ok: true});
    }
    async show(req, res){
        return res.json({ok: true});
    }
    async store(req, res){
        const { email, nome, senha } = req.body;
        let usuario = await Usuario.findOne({ email });
        if(! usuario ){
            usuario = await Usuario.create({ email, nome, senha });
            await Usuario.updateMany({email}, {senha: usuario.senha}); // recurso tecnico
        }
        return res.json(usuario);
    }
    async update(req, res){
        return res.json({ok: true});
    }
    async destroy(req, res){
        return res.json({ok: true});
    }
}
 
export default new UsuarioController();

