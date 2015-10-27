task :default => :tu

desc "Pruebas unitarias de la clase Numerosracionales"
task :tu do
	sh "ruby -I. test/tc_numerosracionales.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
	sh "ruby -I. test/tc_numerosracionales.rb -n /simple/"
end

