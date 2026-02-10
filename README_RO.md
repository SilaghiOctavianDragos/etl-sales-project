# ETL Sales Project

## Descriere
Proiect simplu ETL end-to-end pe un dataset de vânzări (`Sample Superstore`).  
- Importul și curățarea datelor s-a realizat în Python folosind Pandas  
- Datele curățate au fost salvate în `data/processed`  
- Analiza și agregările pe vânzări și profit au fost făcute într-un Jupyter Notebook  
- Procedurile SQL (business logic) sunt în folderul `sql/`

## Structura proiectului

data/
raw/ # Fișierul original
processed/ # Fișierul curățat

notebooks/ # Notebook ETL și analize
sql/ # Proceduri SQL pentru business logic
README.md
.gitignore


## Cum să rulezi proiectul

1. Deschide notebook-ul din `notebooks/`  
2. Asigură-te că fișierele CSV sunt în folderul `data/processed/`  
3. Rulează celulele pentru a vedea curățarea datelor și analizele

## Tehnologii folosite
- Python (Pandas)  
- Jupyter Notebook  
- SQL (SQLScript)  

## Observații
- Proiectul demonstrează un flux ETL simplu, end-to-end  
- Structura repo-ului este gândită pentru claritate și portofoliu
