<!DOCTYPE html>
<html>
<head>

	<title>NeedGod</title>
	<meta charset="utf-8">
	<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="HandheldFriendly" content="True">
	<meta name="MobileOptimized" content="320">
	
	<!-- jQuery Mobile CSS bits -->
	<link rel="stylesheet" href="assets/css/jquery.mobile.structure-1.2.0.min.css" />
	<link rel="stylesheet" href="assets/themes/light2/light2.css" />
	
	<!-- Custom css -->
	<link rel="stylesheet" href="assets/css/custom.css" />
	
	<!-- Javascript includes -->
	<script src="cordova-2.9.0.droid.js"></script>
	<script src="assets/js/jquery-1.7.2.min.js"></script>
	<script src="assets/js/mobileinit.js"></script>
	<script src="assets/js/jquery.mobile-1.2.0.min.js"></script>
	<script src="assets/js/application.js"></script>
	<script type='application/javascript' src='assets/js/fastclick.js'></script>
	<script>
	    window.addEventListener('load', function() {
	    new FastClick(document.body);
	    }, false);
	</script>

</head>
<body>
<div id="container">
	<cfset pageName = "home">
	<cfinclude template="includes/header.cfm"> 
		<h2>To find out if you need God, you must ask yourself some very important questions.</h2>
		<h3>Are you a good person... by God's standards?</h3>
		<h3>And if so... are you good enough to go to heaven?</h3>
		<div class="ui-grid-mono">
			<div class="ui-block-a"> <a href="#part1" data-role="button" data-icon="arrow-r" data-iconpos="right">Get Started</a> </div>
		</div>
	<cfinclude template="includes/footer.cfm">
    
    <!--- 
	----- --------------------------------------
	-----  Part 1
	----- --------------------------------------
	--->
    
    <cfset pageName = "part1">
	<cfinclude template="includes/header.cfm">
		<h2>Here is a quick test you can take to find the answers...</h2>
	<cfset back = "home">
    <cfset next = "part2">    
    <cfinclude template="includes/nextback.cfm">
    
    <cfinclude template="includes/footer.cfm">
    
    <!--- 
	----- --------------------------------------
	-----  Part 2
	----- --------------------------------------
	--->
    
    <cfset pageName = "part2">
	<cfinclude template="includes/header.cfm">
		<h2>QUICK 8-QUESTION TEST</h2>
		<h4>This test is designed to answer 2 questions:</h4>
		<h4>Are you a good person according to God's standards?</h4>
		<h4>And if so, are you good enough to go to heaven?</h4>
	<cfscript>
		function listItem(question,yes,no) {
			writeOutput(
				'   
					<fieldset data-role="controlgroup">
						<h3>#arguments.question#</h3>
						<input type="radio" id="radio-choice-c" name="a" />
						<label for="radio-choice-c">#arguments.yes#</label>
						<input type="radio" id="radio-choice-d" name="a" />
						<label for="radio-choice-d">#arguments.no#</label> 
					</fieldset>');
		}
	</cfscript>
    
    <cfoutput>
	    #listItem(
		    question="1. Have you ever told a lie?",
		    yes="YES, I have told at least one lie in my life.",
		    no="NO, I have never told a lie in my life."
	    )#
	    
	    #listItem(
		    question="2. Have you given money to charity?",
		    yes="YES, I have given money to charity.",
		    no="NO, I have never given money to charity."
	    )#
	    
	    #listItem(
		    question="3. Have you gone to church regularly?",
		    yes="YES, I have gone to church regularly.",
		    no="NO, I have not gone to church regularly."
	    )#
	    
	    #listItem(
		    question="4. Have you ever stolen anything (no matter how small)?",
		    yes="YES, I have stolen at least once in my life.",
		    no="NO, I have never stolen anything in my life."
	    )#
	    
	    #listItem(
		    question='5. Have you ever used "God," "Jesus," or "Christ," as a curse word? <sup>(Example: "Oh my G-d!")</sup>',
		    yes="YES, I have used God's name in vain at least once in my life.",
		    no="NO, I have never, even once, used God's name in vain."
	    )#
	    
	    #listItem(
		    question="6. Have you made it a practice to read the Bible regularly?",
		    yes="YES, I read the Bible regularly.",
		    no="NO, I do not read the Bible regularly."
	    )#
	    
	    #listItem(
		    question="7. Have you ever looked at someone and had lustful thoughts?",
		    yes="YES, I have lusted at least once in my life.",
		    no="NO, I have never lusted in my life."
	    )#
	    
	    #listItem(
		    question='8. Have you ever broken the first Commandment? "You shall have no other gods before me."',
		    yes="
		YES, I have broken the first commandment.",
		    no="NO, I have not broken the first commandment."
	    )#
    </cfoutput>  
    
    <cfset back = "part1">
    <cfset next = "part3"> 
    <cfset nextTitle = "Score">
    <cfinclude template="includes/nextback.cfm">
    
    <cfinclude template="includes/footer.cfm">
    
    <!--- 
	----- --------------------------------------
	-----  Part 3
	----- --------------------------------------
	--->
    
    <cfset pageName = "part3">
	<cfinclude template="includes/header.cfm">
		<h2>YOUR TEST IS BEING SCORED</h2>
		<h3>Just a moment...</h3>
	<cfinclude template="includes/footer.cfm">
    
    <!--- 
	----- --------------------------------------
	-----  Part 4
	----- --------------------------------------
	--->
    
	<cfset pageName = "part4">
	<cfinclude template="includes/header.cfm">
		<ul data-role="listview">
			<li>
				<h2>YOUR SCORE</h2>
				<p>
				<h3>This test is designed to answer 2 questions:<br>
					Are you a good person according to God's standards?<br>
					And if so, are you good <em>enough</em> to go to heaven? </h3>
				<strong>NOTE:</strong> Some questions are scored as a group, and others are scored separately. The questions may appear out of numerical order.
				</p>
			</li>
			<li data-role="list-divider"> 1. Have you ever told a lie? </li>
			<li>
				<p><strong>YOUR SCORE ON QUESTION #1:</strong> <br>
					The Ninth of the Ten Commandments is "You     shall not lie." Telling just one lie, according     to God's standards, makes you a "liar."     In Revelation 21:8, God says, "...<em>all</em> liars, shall have their part in the lake of     fire..."</p>
			</li>
			<li data-role="list-divider"> 7. Have you ever looked at someone and had lustful thoughts? </li>
			<li>
				<p><strong>YOUR SCORE ON QUESTION #7:</strong> <br>
					The Seventh of the Ten Commandments is "You     shall not commit adultery." If you've ever     looked at another person with lustful thoughts,     according to God's standards, that makes you     an "adulterer." Jesus said, "You     have heard it said, You shall not commit adultery:     But I say to you, that whoever <em>looks</em> on a woman to <em>lust</em> after her <em>has     committed adultery with her already in his heart</em>."     (Matthew 5:28) In 1 Corinthians 6:9-10, God     says that no adulterers "...shall inherit     the kingdom of God."</p>
			</li>
			<li data-role="list-divider"> 5. Have you ever used "God," "Jesus," or "Christ," as a curse word? </strong>(Example: "Oh my G-d!")</strong> </li>
			<li>
				<p><strong>YOUR SCORE ON QUESTION #5:</strong> <br>
					The Third of the Ten Commandments is "You     shall not take the name of the Lord in vain."     If you've every used the name "God,"     "Jesus," or "Christ" as     a curse word, what you've done is take the name     of the God who gave you life, and you've used     it as if it were a "four-letter" filth     word to express disgust. That offense is called     "blasphemy," and according to God's     standards, you are a "blasphemer."     In Leviticus 24:16 , God says, "he that     blasphemes the name of the LORD, shall surely     be put to death..."</p>
			</li>
			<li data-role="list-divider"> 4. Have you ever stolen anything (no matter how small)? </li>
			<li>
				<p><strong>YOUR SCORE ON QUESTION #4:</strong> <br>
					The Eighth of the Ten Commandments is "You     shall not steal." Stealing just one thing     (regardless of it's size or monetary value),     according to God's standards, makes you a "thief."     In 1 Corinthians 6:10, God says, "No thieves...     ...shall inherit the kingdom of God."</p>
			</li>
			<li data-role="list-divider"> 8. Have you ever broken the first Commandment? </li>
			<li>
				<p><strong>YOUR SCORE ON QUESTION #8:</strong> <br>
					The First of the Ten Commandments is "You     shall have no other gods before me." That     means that we should love God with all of our     heart, mind, soul and strength. The Bible tells     us that <em>no one</em> has kept this commandment     (see Psalm 14:2-3) -- if you said you had, you     have also broken the 9th Commandment by lying.</p>
			</li>
			<li data-role="list-divider"> 2. Have you given money to charity?<br>
				3. Have you gone to church regularly?<br>
				6. Have you made it a practice to read the Bible regularly? </li>
			<li>
				<p><strong>YOUR SCORE ON QUESTIONS #2, #3, and     #6:</strong> <br>
					Giving money to charity, going to church, and     reading the Bible are all good activities--but     none of them impress God. The Bible says, "and <em>all</em> our righteous acts are like filthy     rags; we all shrivel up like a leaf, and like     the wind our sins sweep us away." (Isaiah     64:6) That means, all our "righteous acts"     -- these "good deeds" that questions     2, 3 and 6 asked about -- can <em>never</em> make up for the fact that we've broken God's     Holy Commandments. Think of it this way. If     a person was guilty of a serious crime... such     as murder... but he gave money to charity, does     that make up for his crime? No. The person's     crime hasn't been paid for because he gave money     to charity. This "good deed" will     mean nothing to the judge when he passes sentence.     The murder must still be punished. </p> 
			</li>
			<li data-role="list-divider"> RESULT: </li>
			<li>
				<p> This test showed   you how you stand up when judged by </strong><em><strong>just   five</strong></em><strong> of God's   Ten Commandments. So, if God judges you </strong> by that standard would you be <a href="#part5i">innocent</a> or <a href="#part5c">guilty</a> of breaking   His Commandments? </p>
			</li>
		</ul>
		<br>
	
	<cfset back = "part5c"> 
	<cfset backTheme = "c">
	<cfset backTitle = "Guilty">
	<cfset backIcon = 0>
	
	<cfset next = "part5i">
	<cfset nextTheme = "c">
	<cfset nextTitle = "Innocent">
	<cfset nextIcon = 0>

	<cfinclude template="includes/nextback.cfm">
    
    <cfinclude template="includes/footer.cfm">	
    
    <!--- 
	----- --------------------------------------
	-----  Part 5 Correct
	----- --------------------------------------
	--->
    
    <cfset pageName = "part5c">
	<cfinclude template="includes/header.cfm">
	
		<h2>CORRECT: You would be guilty.</h2>
		<h3>Do you think you would go to <a href="#part6i">Heaven</a> or <a href="#part6c">Hell</a>?</h3>
	
		<cfset back = "part6c"> 
		<cfset backTheme = "c">
		<cfset backTitle = "Hell">
		<cfset backIcon = 0>
		
		<cfset next = "part6i">
		<cfset nextTheme = "c">
		<cfset nextTitle = "Heaven">
		<cfset nextIcon = 0>

	<cfinclude template="includes/nextback.cfm">    
    <cfinclude template="includes/footer.cfm">
    
    <!--- 
	----- --------------------------------------
	-----  Part 5 Incorrect
	----- --------------------------------------
	--->
    
    <cfset pageName = "part5i">
	<cfinclude template="includes/header.cfm">
	
		<h2>INCORRECT</h2>
		
		<h3>It has already been established that you would 
		be <em>guilty</em> of breaking His commandments. 
		Even if you were able to perfectly keep 9 of the 
		commandments for your entire life -- you <em>have</em> broken the first commandment (Question #8). </h3>
		<p>The 
		First of the Ten Commandments is "You shall 
		have no other gods before me." That means 
		that we should love God with all of our heart, 
		mind, soul and strength. The Bible tells us that <em>no one</em> has kept this commandment (see 
		Psalm 14:2-3).</p>
		<p>Please don't be discouraged. We urge you to be 
		patient and to continue on. Our straightforwardness 
		is motivated by a genuine concern for your soul.</p>
		<p class="smallersubtitle"><strong><strong>Knowing 
		that you are guilty of breaking God's commandments, 
		do you think you would go to <a href="#part6i">Heaven</a> or <a href="#part6c">Hell</a></strong>?</strong>
		
		<cfset back = "part6c"> 
		<cfset backTheme = "c">
		<cfset backTitle = "Hell">
		<cfset backIcon = 0>
		
		<cfset next = "part6i">
		<cfset nextTheme = "c">
		<cfset nextTitle = "Heaven">
		<cfset nextIcon = 0>
		    
    <cfinclude template="includes/nextback.cfm">    
    <cfinclude template="includes/footer.cfm">
    
    <!--- 
	----- --------------------------------------
	-----  Part 6 Correct
	----- --------------------------------------
	--->
    
    <cfset pageName = "part6c">
	<cfinclude template="includes/header.cfm">
	
		<h2>CORRECT: You would go to Hell.</h2>
		<h3>Does the fact that you're headed for Hell concern you?</h3>
		
		<cfset back = "part7c"> 
		<cfset backTheme = "c">
		<cfset backTitle = "Yes">
		<cfset backIcon = 0>
		
		<cfset next = "part7i">
		<cfset nextTheme = "c">
		<cfset nextTitle = "No">
		<cfset nextIcon = 0>
	
	<cfinclude template="includes/nextback.cfm">	        
    <cfinclude template="includes/footer.cfm">
    
    <!--- 
	----- --------------------------------------
	-----  Part 6 Incorrect
	----- --------------------------------------
	--->
    
    <cfset pageName = "part6i">
	<cfinclude template="includes/header.cfm">
	
		<h2>INCORRECT</h2>
		
		<h3>While it may seem that God's goodness will 
		cause Him to overlook your sins, the opposite 
		is actually true. Perhaps the following illustration 
		will add some clarity: Imagine you're standing 
		before a judge, guilty of multiple crimes. The 
		judge is about to pass sentence when he asks, 
		"Do you have anything to say for yourself?"				</h3>
		<p>You stand up, look the judge in the eye and say, 
		"Yes Your Honor, I believe that you're a 
		good man... and because you're good, you will 
		let me go." The judge will probably say something 
		like, "Well, you're right about one thing... 
		I am a good man. And it's because I'm good that 
		I'm going to see that you are punished for your 
		crimes." The very thing you are counting 
		on to save you on the Day of Judgment -- namely 
		God's goodness -- is going to be the very thing 
		that will see to it that justice is done. Because 
		God is <em>so good</em> He will make sure that 
		every murderer, rapist and thief receives justice... 
		but He won't stop there. He will also make sure 
		every liar, blasphemer, and adulterer is punished. 
		While this is something that is extremely tragic 
		and far from God's ultimate desire for any person, 
		the Bible is clear that the place of punishment 
		for those who do not turn from their sins is Hell.</p>
		<strong><strong>Does the fact that you're headed for 
		Hell concern you?</strong></strong>
		
		<cfset back = "part7c"> 
		<cfset backTheme = "c">
		<cfset backTitle = "Yes">
		<cfset backIcon = 0>
		
		<cfset next = "part7i">
		<cfset nextTheme = "c">
		<cfset nextTitle = "No">
		<cfset nextIcon = 0>
	
	<cfinclude template="includes/nextback.cfm">	        
    <cfinclude template="includes/footer.cfm">
	
    <!--- 
	----- --------------------------------------
	-----  Part 7 Correct
	----- --------------------------------------
	--->
    
    <cfset pageName = "part7c">
	<cfinclude template="includes/header.cfm">
	
		<h2>Good. It <em>should</em> concern you.</h2>
		
		<h3>It <em>should</em> concern you. Would you sell 
		one of your eyes for a million dollars? How about 
		both eyes for ten million? No one in their right 
		mind would! Your eyes are precious to you... but 
		they are only a "window" for your soul.</h3>
		
		<p>Your soul (your inner being, your life, your personality) 
		looks out through those eyes. Consider how precious 
		your eyes are... then realize that Jesus said 
		that <strong><a href="#part7ii">Hell is <em>so 
		horrible</em> that you would be better off <em>tearing 
		out your own eyes</em></a></strong> than ending 
		up there for all eternity (Mark 9:43-48). </p>
		<p class="smallersubtitle"><strong><strong>Do you 
		know what God did so that you wouldn't have to 
		spend eternity in Hell</strong>?</strong>
		
		<cfset back = "part8"> 
		<cfset backTheme = "c">
		<cfset backTitle = "Yes">
		<cfset backIcon = 0>
		
		<cfset next = "part8">
		<cfset nextTheme = "c">
		<cfset nextTitle = "No"> 
		<cfset nextIcon = 0>
		        
    <cfinclude template="includes/nextback.cfm">        
    <cfinclude template="includes/footer.cfm">
    
    <!--- 
	----- --------------------------------------
	-----  Part 7 Incorrect
	----- --------------------------------------
	--->
    
    <cfset pageName = "part7i">
	<cfinclude template="includes/header.cfm">
	
		<h2>It <em>should</em> concern you.</h2>
		
		<h3>Would you sell one of your eyes for a million 
		dollars? How about both eyes for ten million? 
		No one in their right mind would! </h3>
		
		<p>Your eyes are 
		precious to you... but they are only a "window" 
		for your soul. Your soul (your inner being, your 
		life, your personality) looks out through those 
		eyes. Consider how precious your eyes are... then 
		realize that Jesus said that Hell is <em>so horrible</em> that you would be better off <em>tearing out your 
		own eyes</em> than ending up there for all eternity 
		(Mark 9:43-48). </p>
		
		<p>Perhaps you feel safe because you don't believe 
		in Hell. This can be likened to standing in the 
		middle of a busy highway and shouting, "I 
		don't believe in trucks!" Your belief or 
		disbelief in trucks will not change reality. The 
		same applies in this situation. Your disbelief 
		in Hell will not cause it to cease to exist. God 
		has given us <a href="#part7ii"><strong>HIS 
		WORD</strong></a> on the existence and purpose 
		of Hell... <a href="#part7ii"><strong>LOOK 
		HERE to see what God says in the Bible about Hell.</strong></a> </p>
		
		<cfset back = "part6i"> 
		<cfset backTheme = "c">
		<cfset backTitle = "Back">
		<cfset backIcon = 0>
		
		<cfset next = "part7ii">
		<cfset nextTheme = "c">
		<cfset nextTitle = "Next">
		<cfset nextIcon = 0>
		
	<cfinclude template="includes/nextback.cfm">		        
    <cfinclude template="includes/footer.cfm">
    
    <!--- 
	----- --------------------------------------
	-----  Part 6 Incorrect Part 2
	----- --------------------------------------
	--->
    
    <cfset pageName = "part7ii">
	<cfinclude template="includes/header.cfm">
	
		<h2>The Bible  Describes <font color="#FF0000">Hell</font></h2>
		
		<h3>There are three words translated "Hell" in Scripture:<br>
		<em>Gehenna</em> (Greek): The place of punishment (<a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=matthew+5:22,29;+10:28" class="popup">Matthew 
		5:22,29; 10:28</a>; and <a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=james+3:6" class="popup">James 
		3:6</a>)<br>
		<em>Hades</em> (Greek): The abode of the dead (<a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=matthew+11:23;+16:18" class="popup">Matthew 
		11:23; 16:18</a>; <a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=luke+16:23" class="popup">Luke 
		16:23</a>; <a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=acts+2:27" class="popup">Acts 
		2:27</a>)<br>
		<em>Sheol</em> (Hebrew): The grave (<a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=psalm+9:17;+16:10" class="popup">Psalm 
		9:17; 16:10</a>)</h3>
		
		<p>There are those who accept that Hell is a place of 
		punishment, but believe that the punishment is to be 
		annihilated--to cease conscious existence. They 
		can't conceive that the punishment of the wicked 
		will be conscious and eternal. If they are correct, 
		then a man like Adolph Hitler, who was responsible for 
		the deaths of millions, is being "punished" 
		merely with eternal sleep. His fate is simply to return 
		to the non-existent state he was in before he was born, 
		where he doesn't even know that he is being punished.</p>
		
		<p>However, Scripture paints a different story. The rich 
		man who found himself in Hell (<a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=luke+16:19-31" class="popup">Luke 
		16:19-31</a>) was conscious. He was able to feel pain, 
		to thirst, and to experience remorse. He wasn't 
		asleep in the grave; he was in a place of "torment." 
		If Hell is a place of knowing nothing or a reference 
		to the grave into which we go at death, Jesus' 
		statements about Hell make no sense. He said that if 
		your hand, foot, or eye causes you to sin, it would 
		be better to remove it than to "go into Hell, 
		into the fire that never shall be quenched: where their 
		worm dies not, and the fire is not quenched" (<a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=mark+9:43-48" class="popup">Mark 
		9:43-48</a>).</p>
		
		<p>The Bible refers to the fate of the unsaved with such 
		fearful words as the following:</p>
		<ul>
		<li>"Shame and everlasting contempt" (<a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=daniel+12:2" class="popup">Daniel 
		12:2</a>)</li>
		<li> "Everlasting punishment" (<a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=matthew+25:46" class="popup">Matthew 
		25:46</a>)</li>
		<li> "Weeping and gnashing of teeth" (<a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=matthew+24:51" class="popup">Matthew 
		24:51</a>)</li>
		<li> "Fire unquenchable" (<a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=luke+3:17" class="popup">Luke 
		3:17</a>)</li>
		<li> "Indignation and wrath, tribulation and anguish" 
		(<a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=romans+2:8-9" class="popup">Romans 
		2:8,9</a>)</li>
		<li> "Everlasting destruction from the presence 
		of the Lord" (<a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=2+thess+1:9" class="popup">2 
		Thessalonians 1:9</a>)</li>
		<li> "Eternal fire...the blackness of darkness 
		for ever" (<a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=jude+7,13" class="popup">Jude 
		7,13</a>)</li>
		</ul>
		<p><a href="http://mobile.biblegateway.com/bible?language=english&amp;version=KJV&amp;passage=revelation+14:10,11" class="popup">Revelation 
		14:10,11</a> tells us the final, eternal destiny of 
		the sinner: "He shall be tormented with fire and 
		brimstone...the smoke of their torment ascended up for 
		ever and ever: and they have no rest day or night."</p>
		<p>We do not enjoy speaking in detail about the torments 
		of Hell. It is, however, a real place and God in his 
		love and mercy does not want you to go there.</p>
		<p class="smallersubtitle"><strong><strong>Do you know 
		what God did so that you wouldn't have to spend eternity 
		in Hell</strong>?</strong>
		
		<cfset back = "part8"> 
		<cfset backTheme = "c">
		<cfset backTitle = "Yes">
		<cfset backIcon = 0>
		
		<cfset next = "part8">
		<cfset nextTheme = "c">
		<cfset nextTitle = "No">
		<cfset nextIcon = 0>
		
	<cfinclude template="includes/nextback.cfm">		        
    <cfinclude template="includes/footer.cfm">
    
    <!--- 
	----- --------------------------------------
	-----  Part 8
	----- --------------------------------------
	--->
    
    <cfset pageName = "part8">
	<cfinclude template="includes/header.cfm">
	
		<h2>What God did...</h2>
		
		<h3>Think of it this way... Imagine you're in a 
		courtroom again, you're guilty of many serious 
		crimes. The judge says, "It's a fine of $500,000, 
		or prison." You don't have anywhere near 
		that amount of money, so the bailiff begins to 
		walk you out of the courtroom when someone you 
		don't even know appears. He runs up to the judge 
		with a check and says, "I've paid the fine 
		for you." Now that the fine has been paid, 
		the law no longer has any hold on you. You're 
		free -- because of the gift you were given.</h3>
		
		<p><strong>This is what God did for you by sending Jesus 
		to die on the cross in your place. So that you 
		wouldn't have to go to Hell, God sent his only 
		Son, Jesus, to die on the cross -- suffering the 
		punishment that justice demands.</strong> Then He rose 
		from the grave, forever defeating death! The Bible 
		tells us, "For God so loved the world, that 
		He gave His only begotten Son, that whosoever 
		believeth on Him, shall not perish, but have everlasting 
		life." (John 3:16) If you will repent of 
		your sins and put your trust in Jesus, God says 
		he will forgive all your sins and grant you the 
		gift of everlasting life. Just like the court 
		case we just talked about, if you repent (that 
		means to confess and forsake your sins) and put 
		your trust in Jesus, then you will not have to 
		suffer God's justice in Hell because the payment 
		for your crimes was made by Jesus on the cross.</p>
		
		<p>If you're not sure what to pray, read <a href="#psalm51">Psalm 
		51</a>, and make it a model for your prayer. The 
		words are not "magical," what God cares 
		about is the attitude of your heart. When you 
		pray, it should sound something like this, "Dear 
		God, I repent of all my sins, such as (name them). 
		I put my trust in Jesus Christ as Lord (to say 
		Jesus is your Lord means you are now making Jesus 
		the master over your life) and Savior. Forgive 
		me and grant me your gift of everlasting life. 
		In Jesus' name I pray. Amen."</p>
		
		<p>Now read your Bible daily, and obey what you 
		read. God will never let you down.</p>
		
		<p>What should you read? We suggest that you start 
		in the book named <a href="http://mobile.biblegateway.com/bible?language=english&amp;version=ESV&amp;passage=John+1" class="popup">"John,"</a> and then read the one named <a href="http://mobile.biblegateway.com/bible?language=english&amp;version=ESV&amp;passage=Romans+1" class="popup">"Romans."</a> Whatever you decide to read, make sure you read 
		every day. </p>
		
		<p>We now suggest that you read <a href="#savePain">"Save 
		Yourself Some Pain"</a> which contains 10 
		very important steps for new and growing Christians. </p>
		
		<p>Please also listen to <a href="http://www.youtube.com/watch?v=cJvottOv-7Q" class="popup">Hell's Best Kept Secret</a> which is a free online message that will give Biblical direction to your Christian life. </p>
		<a href="#savePain" id="Next" data-role="button" data-theme="c">Save yourself some pain</a>
		
	<cfinclude template="includes/footer.cfm">
    
	<!--- 
	----- --------------------------------------
	-----  psalm51
	----- --------------------------------------
	--->
    
    <cfset pageName = "psalm51">
	<cfinclude template="includes/header.cfm">
	
		<h2>Psalm 51:1-17</h2>
		
		<h3>King David's Prayer of Repentance</h3>
		
		<p>1. Have mercy upon me, O God, 
		According to Your lovingkindness; 
		According to the multitude of Your tender mercies, 
		Blot out my transgressions.</p>
		<p>2. Wash me thoroughly from my iniquity, 
		And cleanse me from my sin.</p>
		<p>3. For I acknowledge my transgressions, 
		And my sin is always before me.</p>
		<p>4. Against You, You only, have I sinned, 
		And done this evil in Your sight-- 
		That You may be found just when You speak,
		And blameless when You judge.</p>
		<p>5. Behold, I was brought forth in iniquity, 
		And in sin my mother conceived me.</p>
		<p>6. Behold, You desire truth in the inward parts, 
		And in the hidden part You will make me to know wisdom.</p>
		<p>7. Purge me with hyssop, and I shall be clean; 
		Wash me, and I shall be whiter than snow.</p>
		<p>8. Make me hear joy and gladness, 
		That the bones You have broken may rejoice.</p>
		<p>9. Hide Your face from my sins, 
		And blot out all my iniquities.</p>
		<p>10. Create in me a clean heart, O God, 
		And renew a steadfast spirit within me.</p>
		<p>11. Do not cast me away from Your presence, 
		And do not take Your Holy Spirit from me.</p>
		<p>12. Restore to me the joy of Your salvation, 
		And uphold me by Your generous Spirit.</p>
		<p>13. Then I will teach transgressors Your ways, 
		And sinners shall be converted to You.</p>
		<p>14. Deliver me from the guilt of bloodshed, O God, 
		The God of my salvation, 
		And my tongue shall sing aloud of Your righteousness.</p>
		<p>15. O Lord, open my lips, 
		And my mouth shall show forth Your praise.</p>
		<p>16. For You do not desire sacrifice, or else I would give it; 
		You do not delight in burnt offering.</p>
		<p>17. The sacrifices of God are a broken spirit, 
		A broken and a contrite heart-- 
		These, O God, You will not despise.</p>
		
	<cfinclude template="includes/footer.cfm">
    
	<!--- 
	----- --------------------------------------
	-----  savePain
	----- --------------------------------------
	--->
    
    <cfset pageName = "savePain">
	<cfinclude template="includes/header.cfm">
	
		<h2>Save Yourself Some Pain</h2>
		
		<h3>Becoming a Christian is the most incredible event that will ever take place in your life. You have found peace with your Creator. You have found everlasting life! Be assured--God will never leave you nor forsake you. He has brought you this far and He will complete the wonderful work He has begun in you. God knows your every thought, your every care and your deepest concerns.</h3>
		
		<p>Let's now look at some of those possible concerns. First, and of primary concern -- do you have "assurance" of your salvation? The Bible says to "make your calling and election sure" (<a href="http://mobile.biblegateway.com/passage/?version=ESV&search=2%20Peter%201.10" data-reference="2 Peter 1.10" data-version="nasb95" class="popup">2 Peter 1:10</a>), so, let's go through a short "checklist" to make sure that you are truly saved:</p>
		<ol>
			<li>Are you aware that God became flesh in the person of Jesus Christ (<a href="http://mobile.biblegateway.com/passage/?version=ESV&search=John%201.14" data-reference="John 1.14" data-version="kjv1900" class="popup">John 1:14</a>), and that he died for the sins of the world?</li>
			<li>Did you come to the Savior because you had sinned?</li>
			<li>Did you "repent" and put your faith in Jesus?</li>
			<li>Are you convinced that He suffered and died on the Cross and that He rose again on the third day?</li>
		</ol>
		<p>God acquits us from the Courtroom of Eternal Justice on the grounds that Jesus Christ paid our fine. We are "justified" (made right with God) by His suffering death. The resurrection of Jesus Christ was God's seal of approval of the fact that His precious blood was sufficient to pay the fine.</p>
		<p>Think of it this way... You have violated the law and face a $50,000 fine. You tell the judge that you are truly sorry for your crime, but he answers, "So you should be -- you have broken the law! Now, can you pay this fine?" He can only acquit you if the fine is paid. If someone else pays your fine, then he can let you go, but he must have "grounds" on which to release you.</p>
		<p>The reason we need a substitute (a savior) to pay our moral "fine," is because we have broken God's Law. To see how much we have transgressed this Law (the Ten Commandments), we will go through some of them -- Have you ever told a lie? Have you ever stolen something? Have you ever lusted after another person? If you answered "Yes" to these questions, you admit that you are a lying, thieving, adulterer at heart, and you have to face God on Judgment Day! If you have used His name in vain, then you are guilty of "blasphemy" -- you've substituted God's holy Name for a curse word. Perhaps you've hated someone, then the Bible says that you are a murderer. You have violated God's holy Law, and you're in BIG trouble. On Judgment Day, you will be found guilty and end up in Hell. That's why you need the Savior. Merely being sorry for your sins, or confessing them to God won't help you. You must turn from sin (repent), and your faith must be in Jesus Christ alone. He is the only "grounds" for God to grant mercy towards you. If you're not sure of your salvation, make Psalm 51 your own prayer.</p>
		<p>Let's now look at some more important principles that can save you a great deal of pain...</p>
		<h2><a href="http://www.livingwaters.com/save-yourself-some-pain/daily-bible-reading" class="popup">Daily Bible Reading</a></h2>
		A healthy baby has a healthy appetite. If you have truly been "born" of the Spirit of God, you will have a healthy appetite. The Bible says, "As newborn babes, desire the pure milk of the word, that you may grow thereby," (<a href="http://mobile.biblegateway.com/passage/?version=ESV&search=1%20Peter%202.2" data-reference="1 Peter 2.2" data-version="nasb95" class="popup">1 Peter 2:2</a>). Feed yourself every day without fail.<br>
		<br>
		<h2><a href="http://www.livingwaters.com/save-yourself-some-pain/faith" class="popup">Faith</a></h2>
		When a young man once looked at me and said, "I find it hard to believe some of the things in the Bible," I smiled and asked, "What's your name?" When he said, "Paul," I casually answered, "I don't believe you." He looked at me questioningly.<br>
		<br>
		<h2><a href="http://www.livingwaters.com/save-yourself-some-pain/evangelism" class="popup">Evangelism</a></h2>
		It was late in December, 1996. A large family gathered in Los Angeles for the joyous occasion of wrapping Christmas presents. It was a big family because it was the product of two marriages.<br>
		<br>
		<h2><a href="http://www.livingwaters.com/save-yourself-some-pain/prayer" class="popup">Prayer</a></h2>
		It has been well said that God always answers prayer. Sometimes He says, "Yes." sometimes He says, "NO." Sometimes He says, "Wait for a minute," and a day to the Lord is a thousand years to us (<a href="http://mobile.biblegateway.com/passage/?version=ESV&search=2%20Peter%203.8" data-reference="2 Peter 3.8" data-version="nasb95" class="popup">2 Peter 3:8</a>). That means that a ten year wait for us, is 14 minutes and 24 seconds to God, so ask in faith, but rest in peace-filled patience.<br>
		<br>
		<h2><a href="http://www.livingwaters.com/save-yourself-some-pain/spiritual-warfare" class="popup">Spiritual Warfare</a></h2>
		When you became a Christian, you stepped right into the heat of an age-old battle. You have a three-fold enemy--the world, the flesh, and the devil.<br>
		<br>
		<h2><a href="http://www.livingwaters.com/save-yourself-some-pain/fellowship" class="popup">Fellowship</a></h2>
		Pray about where you should fellowship. Make sure the place you are going to call your church home calls sin what it is -- sin. Do they believe the promises of God? Are they loving? Does the pastor treat his wife with respect? Is he a man of the Word? Does he have a humble heart, and a gentle spirit?
		<br><br>
		<h2><a href="http://www.livingwaters.com/save-yourself-some-pain/giving-thanks" class="popup">Giving Thanks</a></h2>
		For the Christian, every day should be Thanksgiving Day. We should even be thankful in the midst of problems.<br>
		<br>
		<h2><a href="http://www.livingwaters.com/save-yourself-some-pain/water-baptism" class="popup">Water Baptism</a></h2>
		The Bible Says , "Repent and be baptized, every one of you, in the name of Jesus Christ for the remission of sins..." (<a href="http://mobile.biblegateway.com/passage/?version=ESV&search=Acts%202.38" data-reference="Acts 2.38" data-version="nasb95" class="popup">Acts 2:38</a>). There is therefore no question as to whether or not you should be baptized. The questions are how, when, and by whom?<br>
		<br>
		<h2><a href="http://www.livingwaters.com/save-yourself-some-pain/giving-to-god" class="popup">Giving to God</a></h2>
		It was once said that the wallet is the "last frontier"-- that it's the last thing that comes to God in surrender. But it should be the first, along with our surrendered heart.<br>
		<br>
		<h2><a href="http://www.livingwaters.com/save-yourself-some-pain/troubleshoot" class="popup">Troubleshoot</a></h2>
		If you know the Lord, nothing will shake your faith. It is true that the man with an experience is not at the mercy of a man with an argument. Take for example a little boy who is looking at a heater. His father warns him that it's hot.
		</p>
				
	<cfinclude template="includes/footer.cfm">
				
</div>
</body>
</html>