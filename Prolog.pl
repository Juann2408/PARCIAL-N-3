% Espacio para definir los sintomas (reglas)
dynamic:- fiebre_moderada/0, tos/0, dolor_de_cabeza/0, perdida_de_olfato/0, malestar_general/0, congestion_nasal/0, cansancio/0.


inicio:-
	preguntar(fiebre_moderada),
	preguntar(tos),
	preguntar(dolor_de_cabeza),
	preguntar(perdida_de-olfato),
	preguntar(malestar_general),
	preguntar(congestion_nasal),
	preguntar(cansancio),
	diagnostico.
preguntar(sintoma):-
	write(' tiene'), write (sintoma), write('? (si o no): '),
	read(respuesta),
	(respuesta == si -> assert (sintoma) ; true).
diagnostico:- 
	(fiebre_moderada/0, tos/0, perdida_de_olfato/0, malestar_general/0, cansancio/0 ->
		write('Podría tener COVID 19, use el tapabocas y consulte al médico';
		write('Podría ser gripe común, no se detectan suficientes sitomas')).

