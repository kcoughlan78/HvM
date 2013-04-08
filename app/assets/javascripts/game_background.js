(function(){
	
		if ( Sprite3D.isSupported() ) {
			// display 3D content
			// Create the stage

			var stage = Sprite3D.stage();
			var container = Sprite3D.create("#container");
			stage.appendChild( container );
			var monster1 =  Sprite3D.create("#monster1").position(-20,0,40).rotation(0,0,0).update();
			var monster2 = Sprite3D.create("#monster2").position(10,0,60).rotation(0,0,0).update();
			var pitch = Sprite3D.create("#pitch").position(-110,-100,-15).rotation(80,0,0).update();
			var backdrop = Sprite3D.create("#backdrop").position(-90,-70,-100).rotation(20,0,0).update();
			var sidedrop_right = Sprite3D.create("#sidedrop_right").position(70,-40,30).rotation(-31,110,10).update();
			var sidedrop_left = Sprite3D.create("#sidedrop_left").position(-179,-41,31).rotation(-210,105,190).update();
			var roof = Sprite3D.create("#roof").position(-45,-70,10).rotation(50,0,0).update();
			container.appendChild(pitch);
			container.appendChild(backdrop);
			container.appendChild(sidedrop_right);
			container.appendChild(sidedrop_left);
			container.appendChild(roof);
			container.appendChild(monster1);
			container.appendChild(monster2);

					

		} else {
			// display warning or alternative content
			alert("Sorry, your browser doesn't support this content");
		}
}());