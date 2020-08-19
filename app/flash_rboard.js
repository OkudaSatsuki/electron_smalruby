const { spawn } = require('child_process');
const div = document.getElementById('box11');
const p = document.createElement('p');
const ret = spawn('cd', ['pic'] ,{ shell: true}); 
exec('rboard_compile_write.bat',(stderr,stdout) => {
    if(stderr) {
        console.log(stderr); 
        p.textContent += stderr;
        p.textContent += "<br>";
        div.innerHTML = p.textContent;  
        var elementHtml = document.documentElement;
        var bottom = elementHtml.scrollHeight - elementHtml.clientHeight;
        scrollby(0, 300);
    }
    else if(stdout){
        console.log(stdout);
        p.textContent += data;
        p.textContent += "<br>";
        div.innerHTML = p.textContent;
        scrollby(0, 300);    
    }   
    else{
        console.log(err);
    }
});