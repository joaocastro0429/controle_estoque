import express, {Request,Response, NextFunction } from "express"
import { route } from "./routes/routes"
import "express-async-errors"

const server=express()

server.use(express.json())
server.use(route)

server.use((err:Error,request:Request,response:Response,next:NextFunction)=>{
    // verificando a instancia da classe Error
    if(err instanceof Error){
        return response.status(400).json({error:err.message})
    }
   return response.status(500).json({
      status:'error',
      message:'Internal Server Error'  // tratando todos erros internos do sistema como um erro genérico
   })
})


server.listen(3333,()=>console.log("servido rodando na porta 3333"))