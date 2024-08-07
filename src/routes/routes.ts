import express from 'express'

export const route=express.Router()

route.get('/',(request,response)=>{
    return response.json({message:"bem-vindo ao sistema controle de estoque"})
})


