# Cadastrando gêneros
Genre.create!(name: 'Desconhecido');
Genre.create!(name: 'Aventura');
Genre.create!(name: 'Comédia');
Genre.create!(name: 'Policial');
Genre.create!(name: 'Documentário');
Genre.create!(name: 'Fantasia');
Genre.create!(name: 'Ficção Científica');
Genre.create!(name: 'Terror');
Genre.create!(name: 'Musical');
Genre.create!(name: 'Romance');
Genre.create!(name: 'Suspense');
Genre.create!(name: 'Drama');
Genre.create!(name: 'Animação');
Genre.create!(name: 'Ação');


# Cadastrando diretores
Filmmaker.create!(name: 'Quentin Tarantino', birthday: '27/03/1963', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'Christopher Nolan', birthday: '30/07/1970', nationality: 'British', genre_id: 1)
Filmmaker.create!(name: 'Greta Gerwig', birthday: '04/08/1983', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'David Fincher', birthday: '28/08/1962', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'Gore Verbinski', birthday: '16/03/1964', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'Steven Spielberg', birthday: '18/12/1946', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'Todd Phillips', birthday: '20/12/1970', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'Greg Mottola', birthday: '11/07/1964', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'David O. Russell', birthday: '20/08/1958', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'Luc Jacquet', birthday: '05/12/1967', nationality: 'French', genre_id: 1)
Filmmaker.create!(name: 'Morgan Spurlock', birthday: '07/11/1970', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'Chris Columbus', birthday: '10/09/1958', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'Peter Jackson', birthday: '31/10/1961', nationality: 'New Zealander', genre_id: 1)
Filmmaker.create!(name: 'Ridley Scott', birthday: '30/11/1937', nationality: 'British', genre_id: 1)
Filmmaker.create!(name: 'Stanley Kubrick', birthday: '26/07/1928', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'James Wan', birthday: '26/02/1977', nationality: 'Malaysian', genre_id: 1)
Filmmaker.create!(name: 'Baz Luhrmann', birthday: '17/09/1962', nationality: 'Australian', genre_id: 1)
Filmmaker.create!(name: 'Damien Chazelle', birthday: '19/01/1985', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'Joe Wright', birthday: '25/08/1972', nationality: 'British', genre_id: 1)
Filmmaker.create!(name: 'Richard Curtis', birthday: '08/11/1956', nationality: 'British', genre_id: 1)
Filmmaker.create!(name: 'Alfred Hitchcock', birthday: '13/08/1899', nationality: 'British', genre_id: 1)
Filmmaker.create!(name: 'Jonathan Demme', birthday: '22/02/1944', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'John Lasseter', birthday: '12/01/1957', nationality: 'American', genre_id: 1)
Filmmaker.create!(name: 'Chris Buck', birthday: '25/02/1958', nationality: 'American', genre_id: 1)



# Cadastrando filmes
Film.create!(
    title: 'Interstellar',
    year: '2014',
    synopsis: 'As reservas naturais da Terra estão chegando ao fim e um grupo de astronautas recebe a missão de verificar possíveis planetas para receberem a população mundial, possibilitando a continuação da espécie. Cooper é chamado para liderar o grupo e aceita a missão sabendo que pode nunca mais ver os filhos. Ao lado de Brand, Jenkins e Doyle, ele seguirá em busca de um novo lar.',
    country: 'Estados Unidos',
    duration: 169,
    poster: 'https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg',
    filmmaker_id: Filmmaker.find_by(name: 'Christopher Nolan').id,
    genre_id: Genre.find_by(name: 'Ficção Científica').id
)