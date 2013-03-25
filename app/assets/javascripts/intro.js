/**
 * Created with JetBrains RubyMine.
 * User: MacKE
 * Date: 25/03/2013
 * Time: 11:16
 * To change this template use File | Settings | File Templates.
 */
(function(){

    if ( Sprite3D.isSupported() ) {
        // display 3D content
        // Create the stage
        var monsters = new Array();
        var hurler = new Array();
        var stage = Sprite3D.stage();
        var container = Sprite3D.create("#container");
        stage.appendChild( container );
        var pitch = Sprite3D.create("#pitch").position(-265,-100,0).rotation(90,0,0).update();
        var backdrop = Sprite3D.create("#backdrop").position(-265,-150,-100).rotation(0,0,0).update();
        var roof = Sprite3D.create("#roof").position(-265,-180,0).rotation(50,0,0).update();
        container.appendChild(pitch);
        container.appendChild(backdrop);
        container.appendChild(roof);

        for (var x=0;x<30;x++) {
            monsters[x] = Sprite3D.create("#monsters").position(-135,-90,10+x).update();
            container.appendChild(monsters[x]);
        }

        for (var x=0;x<10;x++) {
            hurler[x] = Sprite3D.create("#hurler").position(145,-70,10+x).update();
            container.appendChild(hurler[x]);
        }

        var camerasetting = setInterval(function(){
            container.css("Transition", "all " + (1.9+Math.random()*1.9)+"s linear", true )
                .rotation( Math.random()*-15+5, Math.random()*-15-5, 0 )
                .z( Math.random() * 120 - 100 )
                .update();
        },3500);

    } else {
        // display warning or alternative content
        alert("Sorry, your browser doesn't support this content");
    }
}());