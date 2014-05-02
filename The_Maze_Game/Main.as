package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.ui.Mouse;
	
	
	public class Main extends MovieClip {
		
		var myTitleBackground:titleBackground;
		var myTMGTitle:TMGTitle;
		var myCridits:cridits;
		var mylvl1Button:lvl1Button;
		var mylvl2Button:lvl2Button;
		
		var myWhiteBackground:whiteBackground;
		var myStart1:start1;
		var myMazeCorner1_1:block;
		var myMazeCorner1_2:block;
		var myMazeCorner1_3:block;
		var myMazeCorner1_4:block;
		var myMazeTop1:mazeFrameTop;
		var myMazeBot1:mazeFrameTop;
		var myMazeLeft1:mazeFrameSide;
		var myMazeRight1_1:mazeFrameRightSide;
		var myMazeRight1_2:mazeWall2;
		var myMazeWall1_1:mazeWall7;
		var myMazeWall1_2:mazeWall4;
		var myMazeWall1_3:mazeWall4;
		var myMazeWall1_4:mazeWall2;
		var myMazeWall1_5:mazeWall2;
		var myMazeWall1_6:block;
		var myMazeWall1_7:block;
		var myMazeWall1_8:block;
		var myMazeWall1_9:block;
		var myMazeWall1_10:block;
		var myGoal1:goal1;
		var lvl1IsActive:Boolean;
		
		var myYellowBackground:yellowBackground;
		var myStart2:start2;
		var myMazeWall2_1:mazeWall2_3;
		var myMazeWall2_2:mazeWall2_3;
		var myMazeWall2_3:mazeWall2_3;
		var myMazeWall2_4:mazeWall2_3;
		var myMazeWall2_5:mazeWall2_3;
		var myMazeWall2_6:mazeWall2_4;
		var myMazeWall2_7:mazeWall2_4;
		var myMazeWall2_8:mazeWall2_5;
		var myMazeWall2_9:mazeWall2_6;
		var myMazeWall2_10:mazeWall2_6_2;
		var myMazeWall2_11:mazeWall2_8;
		var myMazeWall2_12:block2_1;
		var myMazeWall2_13:block2_1;
		var myMazeWall2_14:block2_1;
		var myMazeWall2_15:block2_1;
		var myMazeWall2_16:block2_1;
		var myMazeWall2_17:mazeWall2_3_2;
		var myMazeWall2_18:block2_2;
		var myMazeWall2_19:block2_2;
		var myMazeWall2_20:block2_3;
		var myMazeWall2_21:block2_3;
		var myGoal2:goal1;
		var myEnemy2_1:enemy;
		var enemyIsMoving2_1:Boolean;
		var myEnemy2_2:enemy;
		var enemyIsMoving2_2:Boolean;
		var lvl2IsActive:Boolean;
		
		var myPlayer:player;
		
		var myWonBackground:wonBackground;
		var myWonButton:wonButton;
		var myWonText:wonText;
		var winningIsActive:Boolean;
		
		var myLostBackground:lostBackground;
		var myLostButton:lostButton;
		var myLostText:lostText;
		var myLostSkull:lostSkull;
		var lostIsActive:Boolean;
		
		var enemyMovement:int;
		
		var myBackgroundSound:backgroundSound;
		var myClickSound:clickSound;
		var myWonSound:wonSound;
		var myLostSound:lostSound;
		
		public function Main() {
//---Event Listeners------------------------------------------
			stage.addEventListener(MouseEvent.MOUSE_DOWN, clicking);
			stage.addEventListener(MouseEvent.MOUSE_OVER, animation);
			stage.addEventListener(MouseEvent.MOUSE_MOVE, playerMovement);
			stage.addEventListener(Event.ENTER_FRAME, update);
			
//---Sounds in the Game---------------------------------------
			myBackgroundSound = new backgroundSound;
			myClickSound = new clickSound;
			myWonSound = new wonSound;
			myLostSound = new lostSound;
			
//---Objects in Title Screen----------------------------------		
			myTitleBackground = new titleBackground;
			
			myTMGTitle = new TMGTitle;
			myTMGTitle.x = 90;
			myTMGTitle.y = 50;
			
			myCridits = new cridits;
			myCridits.x = 38;
			myCridits.y = 600;
			
			mylvl1Button = new lvl1Button;
			mylvl1Button.x = 200;
			mylvl1Button.y = 200;
			mylvl1Button.gotoAndStop(1);
			
			mylvl2Button = new lvl2Button;
			mylvl2Button.x = 200;
			mylvl2Button.y = 400;
			mylvl2Button.gotoAndStop(1);
			
			myBackgroundSound.play(0,10)
			TitleScreen();
			
//---Objects in Level 1---------------------------------------
			myWhiteBackground = new whiteBackground;
			
			myMazeCorner1_1 = new block;
			myMazeCorner1_2 = new block;
			myMazeCorner1_2.x = 720;
			myMazeCorner1_3 = new block;
			myMazeCorner1_3.y = 720;
			myMazeCorner1_4 = new block;
			myMazeCorner1_4.x = myMazeCorner1_4.y = 720;
			myMazeTop1 = new mazeFrameTop;
			myMazeTop1.x = 80;
			myMazeBot1 = new mazeFrameTop;
			myMazeBot1.x = 80;
			myMazeBot1.y = 720;
			myMazeLeft1 = new mazeFrameSide;
			myMazeLeft1.y = 80;
			myMazeRight1_1 = new mazeFrameRightSide;
			myMazeRight1_1.x = 720;
			myMazeRight1_1.y = 80;
			myMazeRight1_2 = new mazeWall2;
			myMazeRight1_2.x = myMazeRight1_2.y = 640;
			myMazeWall1_1 = new mazeWall7;
			myMazeWall1_1.x = 160;
			myMazeWall1_1.y = 480;
			myMazeWall1_2 = new mazeWall4;
			myMazeWall1_2.x = 320;
			myMazeWall1_2.y = 160;
			myMazeWall1_3 = new mazeWall4;
			myMazeWall1_3.x = 480;
			myMazeWall1_3.y = 80;
			myMazeWall1_4 = new mazeWall2;
			myMazeWall1_4.x = myMazeWall1_4.y = 160;
			myMazeWall1_5 = new mazeWall2;
			myMazeWall1_5.x = 80;
			myMazeWall1_5.y = 320;
			myMazeWall1_6 = new block;
			myMazeWall1_6.x = 640;
			myMazeWall1_6.y = 160;
			myMazeWall1_7 = new block;
			myMazeWall1_7.x = 560;
			myMazeWall1_7.y = 320;
			myMazeWall1_8 = new block;
			myMazeWall1_8.x = 160;
			myMazeWall1_8.y = 560;
			myMazeWall1_9 = new block;
			myMazeWall1_9.x = 320;
			myMazeWall1_9.y = 640;
			myMazeWall1_10 = new block;
			myMazeWall1_10.x = 480;
			myMazeWall1_10.y = 560;
			
			myStart1 = new start1;
			myStart1.x = 640;
			myStart1.y = 80;
			
			myGoal1 = new goal1;
			myGoal1.x = 800;
			myGoal1.y = 560;
			
			lvl1IsActive = false;
			
//---Objects in Level 2---------------------------------------
			myYellowBackground = new yellowBackground;
			
			myMazeWall2_1 = new mazeWall2_3;
			myMazeWall2_1.y = 560;
			myMazeWall2_2 = new mazeWall2_3;
			myMazeWall2_2.x = 160;
			myMazeWall2_2.y = 560;
			myMazeWall2_3 = new mazeWall2_3;
			myMazeWall2_3.x = myMazeWall2_3.y = 240;
			myMazeWall2_4 = new mazeWall2_3;
			myMazeWall2_4.x = myMazeWall2_4.y = 400;
			myMazeWall2_5 = new mazeWall2_3;
			myMazeWall2_5.x = 560;
			myMazeWall2_5.y = 480;
			myMazeWall2_6 = new mazeWall2_4;
			myMazeWall2_6.x = 400;
			myMazeWall2_6.y = 320;
			myMazeWall2_7 = new mazeWall2_4;
			myMazeWall2_7.x = 480;
			myMazeWall2_7.y = 720;
			myMazeWall2_8 = new mazeWall2_5;
			myMazeWall2_8.x = 240;
			myMazeWall2_8.y = 160;
			myMazeWall2_9 = new mazeWall2_6;
			myMazeWall2_10 = new mazeWall2_6_2;
			myMazeWall2_10.x = 240;
			myMazeWall2_11 = new mazeWall2_8;
			myMazeWall2_11.x = 720;
			myMazeWall2_12 = new block2_1;
			myMazeWall2_12.x = 80;
			myMazeWall2_12.y = 720;
			myMazeWall2_13 = new block2_1;
			myMazeWall2_13.x = 80;
			myMazeWall2_14 = new block2_1;
			myMazeWall2_14.x = 80;
			myMazeWall2_14.y = 240;
			myMazeWall2_15 = new block2_1;
			myMazeWall2_15.x = 160;
			myMazeWall2_15.y = 400;
			myMazeWall2_16 = new block2_1;
			myMazeWall2_16.x = 320;
			myMazeWall2_16.y = 600;
			myMazeWall2_17 = new mazeWall2_3_2;
			myMazeWall2_17.x = 240;
			myMazeWall2_17.y = 760;
			myMazeWall2_18 = new block2_2;
			myMazeWall2_18.y = 480;
			myMazeWall2_19 = new block2_2;
			myMazeWall2_19.x = 200;
			myMazeWall2_19.y = 480;
			myMazeWall2_20 = new block2_3;
			myMazeWall2_20.x = 160;
			myMazeWall2_21 = new block2_3;
			myMazeWall2_21.x = 160;
			myMazeWall2_21.y = 140;
			
			myStart2 = new start2;
			myStart2.x = 80;
			myStart2.y = 640;
			
			myGoal2 = new goal1;
			myGoal2.x = 800;
			myGoal2.y = 640;
			
			myEnemy2_1 = new enemy;
			myEnemy2_1.x = 60;
			myEnemy2_1.y = 520;
			
			myEnemy2_2 = new enemy;
			myEnemy2_2.x = 360;
			myEnemy2_2.y = 260;
			
			lvl2IsActive = false;
			
//---Objects in Won Screen------------------------------------
			myWonBackground = new wonBackground;
			
			myWonButton = new wonButton;
			myWonButton.x = 250;
			myWonButton.y = 400;
			
			myWonText = new wonText;
			myWonText.x = 200;
			myWonText.y = 100;
			
			winningIsActive = false;
			
//---Objects in Lose Screen-----------------------------------
			myLostBackground = new lostBackground;
			
			myLostButton = new lostButton;
			myLostButton.x = 250;
			myLostButton.y = 600;
			
			myLostText = new lostText;
			myLostText.x = 150;
			myLostText.y = 450;
			
			myLostSkull = new lostSkull;
			myLostSkull.x = 200;
			myLostSkull.y = 50;
			
			lostIsActive = false;
			
//---The Enemy Information------------------------------------
			enemyMovement = 5;
			
//---The Player Information-----------------------------------
			myPlayer = new player;
			
		}
		function playerMovement (event:MouseEvent){
			myPlayer.x = mouseX;
			myPlayer.y = mouseY;
		}
		
//---All the Click Functions in the Game----------------------
		function clicking (event:MouseEvent){
			if(mylvl1Button == event.target){
				trace("Entering level 1");
				myClickSound.play();
				removeTitleScreen();
				prepareLevel1();
			}
			if(mylvl2Button == event.target){
				trace("Entering level 2");
				myClickSound.play();
				removeTitleScreen();
				prepareLevel2();
			}
			if(myStart1 == event.target){
				myClickSound.play();
				Level1();
			}
			if(myStart2 == event.target){
				myClickSound.play();
				Level2();
			}
			if(winningIsActive == true && myWonButton == event.target){
				myClickSound.play();
				TitleScreen();
				removeWon();
			}
			if(lostIsActive == true && myLostButton == event.target){
				myClickSound.play();
				TitleScreen();
				removeLost();
			}
		}
		
//---The Animation for the Buttons----------------------------		
		function animation (event:MouseEvent){
			if(mylvl1Button == event.target){
				mylvl1Button.gotoAndStop(2);
			}
			if(mylvl2Button == event.target){
				mylvl2Button.gotoAndStop(2);
			}
			if(myTitleBackground == event.target){
				mylvl1Button.gotoAndStop(1);
				mylvl2Button.gotoAndStop(1);
			}
			if(myStart1 == event.target){
				myStart1.gotoAndStop(2);
			}
			if(myWhiteBackground == event.target){
				myStart1.gotoAndStop(1);
			}
			if(myStart2 == event.target){
				myStart2.gotoAndStop(2);
			}
			if(myYellowBackground == event.target){
				myStart2.gotoAndStop(1);
			}
		}
		
//---The Title Screen-----------------------------------------
		function TitleScreen(){
			addChild(myTitleBackground);
			addChild(myTMGTitle);
			addChild(myCridits);
			addChild(mylvl1Button);
			addChild(mylvl2Button);
		}
		
		function removeTitleScreen(){
			removeChild(myTitleBackground);
			removeChild(myTMGTitle);
			removeChild(myCridits);
			removeChild(mylvl1Button);
			removeChild(mylvl2Button);
		}
		
//---Level 1--------------------------------------------------
		function prepareLevel1(){
			addChild(myWhiteBackground);
			myStart1.gotoAndStop(1);
			addChild(myStart1);
		}
		function Level1(){
			addChild(myMazeCorner1_1);
			addChild(myMazeCorner1_2);
			addChild(myMazeCorner1_3);
			addChild(myMazeCorner1_4);
			addChild(myMazeTop1);
			addChild(myMazeBot1);
			addChild(myMazeLeft1);
			addChild(myMazeRight1_1);
			addChild(myMazeRight1_2);
			addChild(myMazeWall1_1);
			addChild(myMazeWall1_2);
			addChild(myMazeWall1_3);
			addChild(myMazeWall1_4);
			addChild(myMazeWall1_5);
			addChild(myMazeWall1_6);
			addChild(myMazeWall1_7);
			addChild(myMazeWall1_8);
			addChild(myMazeWall1_9);
			addChild(myMazeWall1_10);
			addChild(myGoal1);
			addChild(myPlayer);
			removeChild(myStart1);
			Mouse.hide();
			lvl1IsActive = true;
		}
		function removeLevel1(){
			removeChild(myMazeCorner1_1);
			removeChild(myMazeCorner1_2);
			removeChild(myMazeCorner1_3);
			removeChild(myMazeCorner1_4);
			removeChild(myMazeTop1);
			removeChild(myMazeBot1);
			removeChild(myMazeLeft1);
			removeChild(myMazeRight1_1);
			removeChild(myMazeRight1_2);
			removeChild(myMazeWall1_1);
			removeChild(myMazeWall1_2);
			removeChild(myMazeWall1_3);
			removeChild(myMazeWall1_4);
			removeChild(myMazeWall1_5);
			removeChild(myMazeWall1_6);
			removeChild(myMazeWall1_7);
			removeChild(myMazeWall1_8);
			removeChild(myMazeWall1_9);
			removeChild(myMazeWall1_10);
			removeChild(myGoal1);
			removeChild(myPlayer);
			removeChild(myWhiteBackground);
			Mouse.show();
			lvl1IsActive = false;
		}
		
//---Level 2--------------------------------------------------
		function prepareLevel2(){
			addChild(myYellowBackground);
			myStart2.gotoAndStop(1);
			addChild(myStart2);
		}
		function Level2(){
			addChild(myMazeWall2_1);
			addChild(myMazeWall2_2);
			addChild(myMazeWall2_3);
			addChild(myMazeWall2_4);
			addChild(myMazeWall2_5);
			addChild(myMazeWall2_6);
			addChild(myMazeWall2_7);
			addChild(myMazeWall2_8);
			addChild(myMazeWall2_9);
			addChild(myMazeWall2_10);
			addChild(myMazeWall2_11);
			addChild(myMazeWall2_12);
			addChild(myMazeWall2_13);
			addChild(myMazeWall2_14);
			addChild(myMazeWall2_15);
			addChild(myMazeWall2_16);
			addChild(myMazeWall2_17);
			addChild(myMazeWall2_18);
			addChild(myMazeWall2_19);
			addChild(myMazeWall2_20);
			addChild(myMazeWall2_21);
			addChild(myGoal2);
			addChild(myEnemy2_1);
			addChild(myEnemy2_2);
			addChild(myPlayer);
			removeChild(myStart2);
			Mouse.hide();
			lvl2IsActive = true;
		}
		function removeLevel2(){
			removeChild(myMazeWall2_1);
			removeChild(myMazeWall2_2);
			removeChild(myMazeWall2_3);
			removeChild(myMazeWall2_4);
			removeChild(myMazeWall2_5);
			removeChild(myMazeWall2_6);
			removeChild(myMazeWall2_7);
			removeChild(myMazeWall2_8);
			removeChild(myMazeWall2_9);
			removeChild(myMazeWall2_10);
			removeChild(myMazeWall2_11);
			removeChild(myMazeWall2_12);
			removeChild(myMazeWall2_13);
			removeChild(myMazeWall2_14);
			removeChild(myMazeWall2_15);
			removeChild(myMazeWall2_16);
			removeChild(myMazeWall2_17);
			removeChild(myMazeWall2_18);
			removeChild(myMazeWall2_19);
			removeChild(myMazeWall2_20);
			removeChild(myMazeWall2_21);
			removeChild(myGoal2);
			removeChild(myEnemy2_1);
			removeChild(myEnemy2_2);
			removeChild(myPlayer);
			removeChild(myYellowBackground);
			Mouse.show();
			lvl2IsActive = false;
		}
		
//---Update Function------------------------------------------
		function update(event:Event){
	//---Level 1 Win & Lose-----------------------------------
			if(lvl1IsActive == true && myPlayer.hitTestObject(myGoal1)){
				trace("YOU WON THE GAME! :D");
		   		removeLevel1();
		   		won();
			}
			if(lvl1IsActive == true && (myPlayer.hitTestObject(myMazeTop1) || myPlayer.hitTestObject(myMazeBot1) || myPlayer.hitTestObject(myMazeLeft1) || myPlayer.hitTestObject(myMazeRight1_1) || myPlayer.hitTestObject(myMazeRight1_2) || myPlayer.hitTestObject(myMazeWall1_1) || myPlayer.hitTestObject(myMazeWall1_2) || myPlayer.hitTestObject(myMazeWall1_3) || myPlayer.hitTestObject(myMazeWall1_4) || myPlayer.hitTestObject(myMazeWall1_5) || myPlayer.hitTestObject(myMazeWall1_6) || myPlayer.hitTestObject(myMazeWall1_7) || myPlayer.hitTestObject(myMazeWall1_8) || myPlayer.hitTestObject(myMazeWall1_9) || myPlayer.hitTestObject(myMazeWall1_10))){
				trace("YOU LOST THE GAME! D:");
				removeLevel1();
				lost();
			}
			
	//---Level 2 Win & Lose-----------------------------------
			if(lvl2IsActive == true && myPlayer.hitTestObject(myGoal2)){
				trace("YOU WON THE GAME! :D");
				removeLevel2();
				won();
			}
			if(lvl2IsActive == true && (myPlayer.hitTestObject(myMazeWall2_1) || myPlayer.hitTestObject(myMazeWall2_2) || myPlayer.hitTestObject(myMazeWall2_3) || myPlayer.hitTestObject(myMazeWall2_4) || myPlayer.hitTestObject(myMazeWall2_5) || myPlayer.hitTestObject(myMazeWall2_6) || myPlayer.hitTestObject(myMazeWall2_7) || myPlayer.hitTestObject(myMazeWall2_8) || myPlayer.hitTestObject(myMazeWall2_9) || myPlayer.hitTestObject(myMazeWall2_10) || myPlayer.hitTestObject(myMazeWall2_11) || myPlayer.hitTestObject(myMazeWall2_12) || myPlayer.hitTestObject(myMazeWall2_13) || myPlayer.hitTestObject(myMazeWall2_14) || myPlayer.hitTestObject(myMazeWall2_15) || myPlayer.hitTestObject(myMazeWall2_16) || myPlayer.hitTestObject(myMazeWall2_17) || myPlayer.hitTestObject(myMazeWall2_18) || myPlayer.hitTestObject(myMazeWall2_19) || myPlayer.hitTestObject(myMazeWall2_20) || myPlayer.hitTestObject(myMazeWall2_21) || myPlayer.hitTestObject(myEnemy2_1) || myPlayer.hitTestObject(myEnemy2_2))){
			   	trace("YOU LOST THE GAME ! D:");
				removeLevel2();
				lost();
			}
			
	//---Enemy Movements in Level 2---------------------------
		//---Enemy2_1-----------------------------------------
			if(lvl2IsActive == true && myEnemy2_1.x == 60){
				enemyIsMoving2_1 = true;
			}
			if(lvl2IsActive == true && myEnemy2_1.x == 180){
				enemyIsMoving2_1 = false;
			}
			if(lvl2IsActive == true && enemyIsMoving2_1 == true){
				myEnemy2_1.x += enemyMovement;
			}
			if(lvl2IsActive == true && enemyIsMoving2_1 == false){
				myEnemy2_1.x -= enemyMovement;
			}
			
		//---Enemy2_2-----------------------------------------
			if(lvl2IsActive == true && myEnemy2_2.y == 260){
				enemyIsMoving2_2 = true;
			}
			if(lvl2IsActive == true && myEnemy2_2.y == 580){
				enemyIsMoving2_2 = false;
			}
			if(lvl2IsActive == true && enemyIsMoving2_2 == true){
				myEnemy2_2.y += enemyMovement;
			}
			if(lvl2IsActive == true && enemyIsMoving2_2 == false){
				myEnemy2_2.y -= enemyMovement;
			}
		}
		
//---Winning The Level----------------------------------------
		function won(){
			myWonSound.play();
			addChild(myWonBackground);
			addChild(myWonButton);
			addChild(myWonText);
			winningIsActive = true;
		}
		function removeWon(){
			removeChild(myWonBackground);
			removeChild(myWonButton);
			removeChild(myWonText);
			winningIsActive = false;
		}
		
//---Losing The Level-----------------------------------------
		function lost(){
			myLostSound.play();
			addChild(myLostBackground);
			addChild(myLostButton);
			addChild(myLostText);
			addChild(myLostSkull);
			lostIsActive = true;
		}
		function removeLost(){
			removeChild(myLostBackground);
			removeChild(myLostButton);
			removeChild(myLostText);
			removeChild(myLostSkull);
			lostIsActive = false;
		}
	}
}
