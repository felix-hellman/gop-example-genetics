extends Node2D


func _ready():
	var specimen = []
	for x in range(0,3):
		specimen = []
		var generation_result = {"Hello":0, "Goodbye":0, "Dummy1":0, "Dummy2":0, "HelloCombo":0}
		for y in range(100):
			var genome : Genome = $GenomePool.get_next()
			specimen.append(genome)
		var generation = []
		for genome in specimen:
			var result = genome.call_gene("affect")
			for r in result:
				generation_result[r] += 1
			var score =  int("Hello" in result) #Favor Hello Gene
			score -=  int("Goodbye" in result) #Negative 1 for Goodbye
			score -=  int("Dummy1" in result) #Negative 1 for Dummy1
			score -=  int("Dummy2" in result) #Negative 1 for Dummy2
			score -=  int(len(result) == 0) #Negative 1 for no active genes
			score += 10 * int("Hello" in result and "HelloCombo" in result) #Strong favor in this combination
			generation.append({"genome":genome, "score":  score})
		print("Generation: " + str(x) + " done")
		print("Result: " + str(generation_result))
		$GenomePool.update_population(generation)
		
	
	
		
