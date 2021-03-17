import { Schema, model } from 'mongoose';
import bcrypt from 'bcrypt';
 
const UsuarioSchema = new Schema(
    {
        nome: {type: String, required: true, max: 100},
        email: {type: String, required: true, max: 200},  
        senha:  {type: String},
        updated: { type: Date, default: Date.now },
        empresa: { type: Schema.Types.ObjectId, ref: 'Empresa', required: false },
    }
);
 
UsuarioSchema.pre('save', function(next) {
    if (!this.isModified('senha')) return next();
 
    bcrypt.hash(this.senha, 8, (err, hash) => {
        if(err)
            return next(err);
 
        this.senha = hash;
        return next(); 
    });
    next();
}); 
 
UsuarioSchema.methods.checkPassword = function(candidatePassword) {
    return bcrypt.compare(candidatePassword, this.senha);
};

UsuarioSchema.methods.checkPassword = function(senhaInformada){
    return bcrypt.compare(senhaInformada, this.senha);
} 
export default model("Usuario", UsuarioSchema);