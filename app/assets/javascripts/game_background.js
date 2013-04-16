(function(){

    if ( Sprite3D.isSupported() ) {
        // display 3D content
        // Create the stage

        var stage = Sprite3D.stage();
        var container = Sprite3D.create("#container");
        stage.appendChild( container );
        var monster1 =  Sprite3D.create("#monster1").position(-60,10,90).rotation(0,0,0).update();
        var monster2 = Sprite3D.create("#monster2").position(30,0,70).rotation(0,0,0).update();
        var monster3 = Sprite3D.create("#monster3").position(80,20,80).rotation(0,0,0).update();
        var monster4 = Sprite3D.create("#monster4").position(110,40,150).rotation(0,0,0).update();
        var pitch = Sprite3D.create("#pitch").position(-260,-110,20).rotation(75,0,0).update();
        var backdrop = Sprite3D.create("#backdrop").position(-55,-90,0).rotation(20,0,0).update();
        var sidedrop_right = Sprite3D.create("#sidedrop_right").position(120,-85,0).rotation(20,10,0).update();
        var sidedrop_left = Sprite3D.create("#sidedrop_left").position(-241,-85,0).rotation(20,-10,0).update();
        var roof = Sprite3D.create("#roof").position(-235,-120,50).rotation(50,0,0).update();
        var scoreboard = Sprite3D.create("#scoreboard").position(-280,85,115).rotation(0,0,0).update();
        container.appendChild(pitch);
        container.appendChild(backdrop);
        container.appendChild(sidedrop_right);
        container.appendChild(sidedrop_left);
        container.appendChild(roof);
        container.appendChild(monster1);
        container.appendChild(monster2);
        container.appendChild(monster3);
        container.appendChild(monster4);
        container.appendChild(scoreboard);
        var timer = Sprite3D.create("#timer").position(0,0,0).rotation(0,0,0).update();
        var score = Sprite3D.create("#score").position(50,0,0).rotation(0,0,0).update();
        var gamerMsg = Sprite3D.create("#gamerMsg").position(100,0,0).rotation(0,0,0).update();
        scoreboard.appendChild(timer);
        scoreboard.appendChild(score);
        scoreboard.appendChild(gamerMsg);

    } else {
        // display warning or alternative content
        alert("Sorry, your browser doesn't support this content");
    }
}());