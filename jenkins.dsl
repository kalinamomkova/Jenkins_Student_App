listView('SoftUni_Student-DSL') {
    description('ListView for SoftUni students')
    //we have to specify the columns if we want to 
  columns {
    status()
    weather()
    name()
    lastSuccess()
    lastFailure()
    lastDuration()
    buildButton()
  }
  jobs{
    name('SoftUni_Student_CI-DSL')
  } 
}
 job('SoftUni_Student_CI-DSL') {
        description('Jobs for SoftUni project')
        steps {
          batchFile('echo hello')
          batchFile('npm install')
          batchFile('npm audit')
          batchFile('npm run tests')
    }
 }