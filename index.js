

const users =[
    {name:'andy', ssn:5678, password:'hello123'},
    {name:'Jared', ssn:7899, password:'goodbye123'}
]

const test =(userName, userSsn, userPassword)=>{
    const userFound = users.filter(users=>{ return users.name === userName && users.ssn === userSsn && users.password === userPassword });
    return userFound.length !==0 ? "Access Granted!" : `Access Denied! ${commandLines()}`;
}


function commandLines(){
    console.log("Ok this is the re-enter credentials")
    var test = prompt("Please enter your name");
    alert(test)
    return "Thank you!"
}
console.log(test('andy', 56748, 'hello123'))

