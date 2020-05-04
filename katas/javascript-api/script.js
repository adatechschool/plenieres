function chercherInfos() {
    fetch('
https://randomuser.me/api/
')
    .then(resolve => resolve.json())
    .then(infos => {
        console.log(infos.results)
    })
}

chercherInfos()