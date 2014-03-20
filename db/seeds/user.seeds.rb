after :user_profiles do
  User.create(name:'jose esteves', email:'pjmaia10@gmail.com',bi:'123123123',nif:'123123123',address:'Rua do esgoto',password:"12345678",driver_license:'P-3213213',phone_number:'912311234')
end