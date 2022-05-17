<!DOCTYPE html>
<html>
    <head></head>
        <style>
            table {
                width: 100%;
            }

        </style>

        <script>
            function ricerca() {
            const xhttp = new XMLHttpRequest();
            //gestione risposta
            xhttp.onload = function() {
                document.getElementById("demo").innerHTML = this.responseText;
                let dati=JSON.parse(this.responseText); 

                let text = "<table border='1'> <th> Titolo </th> <th> Autore </th> <th> ISBN </th> <th> prezzo </th>";
                for (let x in dati) {
                        text += "<tr><td>" + dati[x].Titolo + "</td>";
                        text += "<td>" + dati[x].Autore + "</td>";
                        text += "<td>" + dati[x].ISBN + "</td>";
                        text += "<td>" + dati[x].prezzo + "</td>";
                        text += "</tr>";
                    }
                }
                text += "</table>"
                document.getElementById("demo").innerHTML = text;
            }

            var select = document.getElementById('funz');
            var value = select.options[select.selectedIndex].value;

            switch (value){

                case "post":
                    //preparo l'URL
                    xhttp.open("GET", "api/book/all_filtrato");
                    //popolo l'intestazione
                    xhttp.setRequestHeader("accept","application/json");
                    //richiamo l'URL
                    xhttp.send();
                    console.log(xhttp.send());
                    break;
            }
            
        </script>
    </head>
    <body>

        <h2>Ricerca filtrata libri</h2>
        <button type="button" onclick="ricerca()">Cerca</button>

        <p id="demo"></p>

        <select name="funz" id="funz">
            <option value="post">post</option>
          </select> <br>
        <br>
        <form>
            <label>Autore<input type="text" name="Autore" id="Autore"></label>
            <label>prezzo<input type="number" name="prezzo" id="prezzo"></label>
        </form>
    </body>
</html>