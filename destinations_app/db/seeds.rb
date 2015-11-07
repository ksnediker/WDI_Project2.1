destinations = Destination.create([
	{
		country: 'United States of America',
		region:  'New York',
		city:    'New York City',
		img_url: 'http://www.wallackmanagement.com/SlideImg/show6.jpg' 
	},
	{
		country: 'Mexico',
		region:  'Guanajuato',
		city:    'San Miguel de Allende',
		img_url: 'https://upload.wikimedia.org/wikipedia/commons/1/1a/San_Miguel_de_Allende_sky.jpg' 
	}	
])

activities = Activity.create([
	{
		stay:  'The Nomad in Flatiron',
		eat:   'Barrio Chino in the Lower East Side',
		visit: 'The Brooklyn Bridge',
		drink: 'Raines Law Room in Midtown'
	},
	{
		stay:  'Rosewood San Miguel',
		eat:   'El Gato',
		visit: 'The Main Square',
		drink: 'Rosewood Rooftop Bar'
	}
])
