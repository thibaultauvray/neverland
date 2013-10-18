        var infoBulle = new google.maps.InfoWindow();
        var maCarte;
 
        $(document).ready(function() {
            var dataECOLE = new Array();
            dataECOLE[0] = new Array('Toulouse', 'Franois Test', 43.549251, 1.505113, 'Eurogiciel', 'http://www.wmaker.net/firstservices/photo/290113-361383.jpg', '<p>blabla</p>');
            dataECOLE[1] = new Array('Toulouse', 'Jean Pierre Unitaire', 43.640709, 1.371717, 'Sogeti Region', 'http://www.stepstone.be/upload_BE/logo/S/logoSogeti_Belgium_467BFR.gif', ' ');
 
            var optionsCarte = {
                zoom: 7,
                center: new google.maps.LatLng(46.396958, 2.655029),
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
 
            maCarte = new google.maps.Map(document.getElementById("map"), optionsCarte);
 
            var contenue;
            var point;
            var optionsMarqueur;
            var marqueur;
 
            for (var i = 0; i < dataECOLE.length; i++) {
                point = new google.maps.LatLng(dataECOLE[i][2], dataECOLE[i][3]);
                optionsMarqueur = {
                    position: point,
                    map: maCarte,
                    title: dataECOLE[i][1]
                }
                marqueur = new google.maps.Marker(optionsMarqueur);
 
                contenue = '<div id="conteneurInfoBulle">' +
                            '<h1>' + dataECOLE[i][1] + '</h1>' +
                            '<h2>Entreprise : ' + dataECOLE[i][4] + '</h2>' +
                            '<div id="texteInfoBulle">' +
                            '<div id="lettrineImage"><img src="' + dataECOLE[i][5] + '" title="Logo Entreprise" /></div>' +
                            dataECOLE[i][6] +
                            '</div>' +
                            '</div> ';
 
                bindInfoWindow(marqueur, contenue);
            }
        });
 
        function bindInfoWindow(marqueur, info) {
            google.maps.event.addListener(marqueur, 'click', function() {
                infoBulle.setContent(info);
                infoBulle.open(maCarte, marqueur);
            });
        }
