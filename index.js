

const users =[
    {name:'andy', ssn:5678, password:'hello123'},
    {name:'Jared', ssn:7899, password:'goodbye123'}
]

const test =(userName, userSsn, userPassword)=>{
    const userFound = users.filter(users=>{users.name === userName && users.ssn === userSsn && users.password === userPassword })
    
    return userFound.length;

}
console.log(test('andy', '123sn', 'hello123'))