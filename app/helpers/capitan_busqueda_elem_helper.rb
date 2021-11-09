module CapitanBusquedaElemHelper
	def b_delimiters
		[', . ; : ( ) { } [ ] "  \' ¿ ? ! ¡ ']
	end

	def base_rules
		[
			[:es, :pronombres, :excluir, 'yo tú él ella ello nosotros vosotros ellos'],
			[:es, :pronombres, :excluir, 'me se te le lo nos les os'],
			[:es, :pronombres, :excluir, 'mí mi ti su suyo sus suyos usted ustedes vuestro vuestros'],
			[:es, :pronombres, :excluir, 'esto estos eso esos este ese aquel'],
			[:en, :pronombres, :excluir, 'i you he she it we they'],
			[:en, :pronombres, :excluir, 'my your him her its us them'],
			[:en, :pronombres, :excluir, 'mine yours his hers our ours their theirs'],
			[:en, :pronombres, :excluir, 'this that these those'], 
			[:en, :pronombres, :excluir, 'myself yourself himself herself ourselves yourselves themselves'],
			[:ge, :pronombres, :excluir, 'ich du er sie es wir ihr mich dich ihn'],
			[:ge, :pronombres, :excluir, 'uns euch mir dir ihm ihnen deiner seiner unser euer ihrer'],
			[:fr, :pronombres, :excluir, 'je tu il elle on nous vous ils elles mon ton'],
			[:fr, :pronombres, :excluir, 'son notre votre leur ma ta sa mes tes ses vos'],
			[:es, :articulos, :excluir, 'el la los las un una unos unas'],
			[:en, :articulos, :excluir, 'a an the'],
			[:ge, :articulos, :excluir,	'der ein den einen dem einem des eines die'],
			[:ge, :articulos, :excluir, 'eine einer das meine meinen meiner une'],
			[:es, :preposiciones, :excluir, 'a ante bajo cabe con contra de del desde'],
			[:es, :preposiciones, :excluir, 'en entre hacia hasta para por según sin so'],
			[:es, :preposiciones, :excluir, 'sobre tras durante mediante pro vs versus vía'],
			[:en, :preposiciones, :excluir, 'in on at to of from for with about as between by'],
			[:ge, :preposiciones, :excluir, 'aus mit von nach bis für ohne um wegen trotz innerhalb während'],
			[:fr, :preposiciones, :excluir, 'dans derrière devant sur sous à côte droite gauche'],
			[:es, :conjunciones, :excluir, 'si sí no o y & e ni solo sólo sino así'],
			[:es, :conjunciones, :excluir, 'como cómo igual mismo que qué mas más pero'],
			[:en, :conjunciones, :excluir, 'and but or yes not'],
			[:ge, :conjunciones, :excluir, 'aber beziehungsweise bzw denn oder sondern und'],
			[:fr, :conjunciones, :excluir, 'car donc et mais ou'],
			[:es, :adverbios, :excluir, 'ahora antes después tarde luego ayer hoy mañana aquí lejos cerca fuera'],
			[:es, :adverbios, :excluir, 'detrás encima ahí arriba bien mal lentamente mejor peor siempre nunca ya'],
			[:es, :adverbios, :excluir, 'ahora frecuentemente allí allá acá abajo delante enfrente debajo dentro donde'],
			[:es, :adverbios, :excluir, 'antes cuidadosamente mucho poco menos bastante bastantes nada cuanto cuántos claro'],
			[:es, :adverbios, :excluir, 'bueno obviamente tambien tampoco apenas jamás quizá probablemente seguramente acaso'],
			[:es, :adverbios, :excluir, 'demás inclusive aún cuando'],
			[:en, :adverbios, :excluir, 'slowly easily simply carefully naturally happily clearly fast hard well carelessly'],
			[:en, :adverbios, :excluir, 'worse separately wrong badly upwards downwards inwards outwards forwards backwards'],
			[:en, :adverbios, :excluir, 'onwards homewards everywhere nowhere somewhere anywhere elsewhere up down here there'],
			[:en, :adverbios, :excluir, 'near nearby far away abroad overseas in out into inside outside indoors outdoors'],
			[:en, :adverbios, :excluir, 'above below underneath beneath ahead behind front opposite around beyond aside'],
			[:en, :adverbios, :excluir, 'sideways back over all now early late soon already tomorrow earlier later then'],
			[:en, :adverbios, :excluir, 'before after afterwards nowadays currently today yesterday still not yet longer'],
			[:en, :adverbios, :excluir, 'more any just ever thereafter lately recently formerly latterly past future last'],
			[:en, :adverbios, :excluir, 'next when where meanwhile shortly someday ago long whole while several since'],
			[:en, :adverbios, :excluir, 'till until as hereafter forever eternally temporarily permanently always usually'],
			[:en, :adverbios, :excluir, 'frequently often sometimes occasionally rarely seldom hardly never annually yearly'],
			[:en, :adverbios, :excluir, 'monthly weekly daily hourly every normally regularly once twice first initially'],
			[:en, :adverbios, :excluir, 'secondly thirdly fourthly lastly finally eventually much little less almost nearly'],
			[:en, :adverbios, :excluir, 'barely scarcely partially partly entirely completely absolutely relatively least most'],
			[:en, :adverbios, :excluir, 'largely mostly mainly totally extremely altogether very too enough only pretty'],
			[:en, :adverbios, :excluir, 'quite fairly rather certainly course definitely indeed really serely truly'],
			[:en, :adverbios, :excluir, 'undoubtedly likely perhaps maybe possibly probably'],
			[:ge, :adverbios, :excluir, 'vorgestern gestern heute morgen übermorgen damals früher jetzt sofort gleich bald'],
			[:ge, :adverbios, :excluir, 'später dann immer meistens häufig oft manchmal selten nie morgens nachmittags'],
			[:ge, :adverbios, :excluir, 'abends nachts montags dienstags mittwochs donnerstags freitags samstags sonntags'],
			[:ge, :adverbios, :excluir, 'täglich wöchentlich monatlich jährlich vorn vorne hinten links rechts oben unten'],
			[:ge, :adverbios, :excluir, 'innen außen hier da dort überall nirgends aufwärts abwärts vorwärts rückwärts'],
			[:ge, :adverbios, :excluir, 'heimwärts westwärts bergauf bergab deshalb darum deswegen folglich daher erstens'],
			[:ge, :adverbios, :excluir, 'zweitens drittens auch ebenfalls ansonsten außerdem nur wenigstens hingegen sehr'],
			[:ge, :adverbios, :excluir, 'kaum daran dran darauf drauf daraus dabei dagegen darin damit darüber darum'],
			[:ge, :adverbios, :excluir, 'dazu hieran hierauf hieraus hierbei hiergegen hierin hiermit hierüber hierzu wann'],
			[:ge, :adverbios, :excluir, 'warum wieso wie wo bald gern oft wohl eher lieber öfter wohler am ehesten'],
			[:ge, :adverbios, :excluir, 'liebsten häufigsten wohlsten'],
			[:fr, :adverbios, :excluir, 'assez aussi beaucoup davantage plus environ moins peu presque très trop à'],
			[:fr, :adverbios, :excluir, 'droite gauche dedans dehors derrière devant dessous dessus ici là aujourd hui'],
			[:fr, :adverbios, :excluir, 'après avant bientôt déjà demain encore ensuite hier maintenant aussi cependant'],
			[:fr, :adverbios, :excluir, 'toutefois donc revanche en encore même par ailleurs seulement tout quand ainsi'],
			[:fr, :adverbios, :excluir, 'bien mal mieux hélas heureusement malheureusement bonheur certainement oui assurément'],
			[:fr, :adverbios, :excluir, 'certainement certes peut être non ne aucunement jamais rien combien comment'],
			[:fr, :adverbios, :excluir, 'pourquoi quand où alors effet enfin néanmoins contre'],
			[:todos, :romanos, :excluir, 'i ii iii iv v vi vii viii ix x'],
			[:todos, :romanos, :excluir, 'xi xii xiii xiv xv xvi xvii xviii xix xx'],
			[:todos, :romanos, :excluir, 'xxi xxii xxiii xxiv xxv xxvi xxvii xxviii xxix xxx'],
			[:todos, :romanos, :excluir, 'xxxi xxxii xxxiii xxxiv xxxv xxxvi xxxvii xxxviii xxxix xl'],
			[:todos, :romanos, :excluir, 'xli xlii xliii xliv xlv xlvi xlvii xlviii xlix l'],
			[:todos, :romanos, :excluir, 'li lii liii liv lv lvi lvii lviii lix lx'],
			[:es, :otros, :excluir, 'pp don doña sic'],
			[:es, :verbos, :excluir, 'ser soy eres es somos sois son'],
			[:es, :verbos, :excluir, 'ser era eras eramos erais eran'],
			[:es, :verbos, :excluir, 'ser seré serás será seremos serais seran'],
			[:es, :verbos, :excluir, 'ser sería serías seríamos seríais serian'],
			[:es, :verbos, :excluir, 'estar estoy estás está estamos estáis están'],
			[:es, :verbos, :excluir, 'estar estaba estabas estabamos estabais estaban'],
			[:es, :verbos, :excluir, 'estar estaré estarás estará estarán estaréis estarán'],
			[:es, :verbos, :excluir, 'estar estaría estarías estaríamos estaríais estarían'],
			[:es, :verbos, :excluir, 'hacer hago haces hace hacemos haceis hacen'],
			[:es, :verbos, :excluir, 'hacer hacía hacías hacía hacíamos haciais hacían'],
			[:es, :verbos, :excluir, 'hacer haré harás hará haremos hareis harán'],
			[:es, :verbos, :excluir, 'hacer haría harías haríamos hariais harían'],
			[:es, :verbos, :excluir, 'hacer he has han hemos habeis'],
			[:en, :verbos, :excluir, 'be are is it was were has'],
			[:en, :verbos, :excluir, 'do does'],
			[:ge, :verbos, :excluir, 'bin bist ist sind seid'],
			[:fr, :verbos, :excluir, 'suis est sommes êtes sont']
		]
	end

	def app_rules
		[
			[:todos, :otros, :excluir, 'abstract']
		]
	end

	def get_expresions(text)
		sub_expresion_elem.each do |elem|
			text = text.gsub(elem, '|')
		end
		text.split('|')
	end
end