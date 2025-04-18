//Author: Wendy Diaz-Wison
// This project is based on the story of Frankenstein by Mary Shelley
//# theme: dark
//# author: Wendy Diaz-Wilson
//VARIABLES
VAR Creature_name = "the creature"
VAR Chosen_trait = ""
VAR Critical_dec = ""
VAR Response = "" //new variable to help add new descion point

->Intro
==Intro
//My three choice directions reflect design considerations I find significant when it comes to UX design; functionality and aesthetics are clear ones, but ethics is one I feel is not focused on enough. Especially when considering things like transparency, privacy, inclusivity, and sustainability. But for the sake of this story, we focus more on the morality and social responsibility aspect of ethics.
Welcome to my interactive Ink story based on the novel Frankenstein by Mary Shelley with a touch of inspiration from Scary Stories to Tell in the Dark by Alvin Schwartz. 
In this short interactive experience, you’ll explore the creation of a well-known creature through three distinct paths, each shaped by a core design principle: functionality, aesthetics, or ethics.
Your choices will determine the fate of both the creator and the creation. 
For the full effect, I recommend turning the lights off and lighting a candle. Let the story pull you in. 
Enjoy!
*[Begin Story]->GameStart

==GameStart
//#CLEAR
//Here I am setting the scene. I want the reader to envision a storm that comes every day and woods surrounding the doctor's metal experiment room. A direct juxtaposition of each other. To build this vibe, he is unnatural in a natural world.
It has started raining, first as a soft drizzle but now growing into a steady downpour, drumming against the earth. The storm is forming, the one that has arrived without fail, night after night, neither early nor late. Its rhythm as precise as a clock's ticking. And tonight, you intend for it to bring you the power to finally complete your work.
The clouds roll towards your windows, allowing darkness to swallow the cold steel room where you have labored endlessly. Beyond these walls, the forest stands wild and untamed. A scent of damp earth begins to linger, seeping through the cracks. 
You smile faintly and whisper...
"Ah. The sweet sweet smell of petrichor to welcome the night".
    * [Strike a match...] -> Intro_Environment

=== Intro_Environment ===
//#CLEAR
//Here I continue to build the enviornment and we start to hint that something odd is going on.
The flame flares to life. You grab the candlestick watching it flicker wildly, casting distorted shapes along the walls. 
"There it goes dancing with the dark," you murmur. 
An observation you will soon understand far too well.

The storm is halfway here. Thunder rumbles in the distance, a low, steady vibration against the walls. The wind moans through the trees, its voice twisting into something almost human, almost pleading. Stop. Turn back. Abandon what should never have begun. 
But you will not. You cannot.
The scent of petrichor clashes with the sharp tang of chemicals inside, a battle between nature and something unnatural. Beneath it all, another smell lingers, very faint but undeniable. Stale. Metallic. Something just on the edge of decay.
The wax burns down to your fingertips before you even notice.
    * ["OUCH!"...] ->Intro_Project

==Intro_Project
//#CLEAR
//Here I start easing into the small details of the creature. The storm from earlier is now given its true purpose as well.
You shake your hand, bringing your fingertips to your lips. The sharp tange of chemicals burns your tongue. The pain is minor and insignificant. 
Still, the thought lingers... "Will it feel pain just like I... will it feel anything at all?"
Your gaze locks onto the operating table. A collection of stitched flesh, lifeless limbs, and borrowed parts lie motionless, waiting for the surge to force them into existence. 
The flickering light carves shadows into the uneven sutures, casting a firey glow on the pale patchwork skin. Your heart pounds now like a drum against your ribs. Something gnaws at the edges of your mind, whispering questions you refuse to answer. 
Could it be doubt?
    * [There's no turning back now...] -> First_DecisionPoint

//FIRST DECISION POINT, that decides what kind of creature you are creating and will be the defining factor of which ending you will receive.
== First_DecisionPoint
//#CLEAR
//Here I am attempting to build a scene where the reader understands their creation will have a strong focus in a single direction
You exhale slowly, placing your trembling hands on the table's edge. 
"Every decision that led me here will prove I have unlocked the secret to life," you tell yourself. 
But now, at the brink of creation, you must make a choice that will define its existence. 
Will you focus on functionality, ensuring the body flows as intended and is built with unyielding strength? 
Will you prioritize aesthetics, shaping a form that embodies an ideal, a reflection of beauty as you perceive it? 
Or will you focus on its cognitive ability, shaping its brain to refine its ability to think, reason, and perceive the world beyond mere instinct?
You must decide.
    * [Functionality. It must be built to last.] ->Functionality_Route
    * [Aesthetics. It must be captivating.] ->Aesthetics_Route
    * [Ethics. It must have a conscience.] ->Ethics_Route

//VARIABLE 1 is getting assigned the trait chosen
//Here depending on what choice they picked previously will display similar verbage that aligns more with their design choice.
==Functionality_Route
//#CLEAR
~ Chosen_trait = "functionality"
You decide to focus on reinforcing the body's structure, ensuring each joint, muscle, and ligament is secured with precision. Picking out only the strongest bones to put together. 
A quiet satisfaction settles over you. This creation will have strength above all else.
    -> Naming_Question

//VARIABLE 1 is getting assigned the trait chosen
//Attempting to bring some creepy elements into the fact this doctor must of recently unburried someone? or killed someone?
==Aesthetics_Route
//#CLEAR
~ Chosen_trait = "aesthetics"
You decide to pour yourself into every stitch, every detail, all the way down to the nail bed. Only the freshest pieces were chosen, flesh still clinging to warmth when you began your work. You step back, admiring your creation, a fusion of science and artistry. 
"This will be the epitome of true beauty and brilliance in the name of science" you exclaim.
    -> Naming_Question

//VARIABLE 1 is getting assigned the trait chosen
==Ethics_Route
//#CLEAR
~ Chosen_trait = "ethics"
You begin stitching the spinal cord at the neck. You chose the finest brain possible, the one of your previous assistants. You ensure every nerve is carefully connected, attempting to embed the capacity to perceive, to reason, and to question its very existence.
    -> Naming_Question

//SECOND DECISION POINT & VARAIBLE 2 getting assigned name or not
==Naming_Question
//Adam is a nod to the original story as they mention it as a name but still give it none
The work is near finished, yet something lingers. A name. A title. A mark of identity. Do you give it the dignity of a name, a symbol of humanity? Or do you leave it as it is, an unnamed creation, forever bound by its origin?
    * [“I will call you Adam.”] 
    ~ Creature_name = "Adam"
    -> Creature_ComesAlive
    * [“You are simply the creature.”] 
    ~ Creature_name = " The Creature"
    -> Creature_ComesAlive

//This is called regardless of the path chosen
=== Creature_ComesAlive ===
//#CLEAR
//Here we can see the doctor is more confident in its choice. And apply the purpose of the storm build up from earlier. 
The storm rages uncontrollably just as you finish the last stitch. 
"It is time," you say. 
Nature itself holds the key. You reach for the lever, your hands now steady despite the chaos outside. The storm is right on cue. A flash of light cuts through the darkness. 
You pull the lever. And a surge of energy courses through the wires, racing toward the body on the table. Limbs convulse, the flesh twitching violently as power forces movement into what was once lifeless. 
And then... stillness. 
Even the storm seems to hold its breath.
Then... 
It's eyes flutter open, and its head turns towards you.
    * [It is alive...] -> Creatures_reaction

//CONDITIONAL TEXT 1 response changes depending if creature was named or not.
==Creatures_reaction
//#CLEAR
{Creature_name == "Adam": 
Adam inhales slowly, his chest rising and falling for the first time. His gaze meets yours, curious and uncertain. 
"What... am I?" he asks, voice fragile. 
You hold your breath before answering. 
"You are the stem of my mind, my creation."
-else:
The creature groans, limbs stiff as it slowly rises. It's gaze meets yours, confused and uncertain. 
"Who... am I?" it croaks. 
"You are mine," you respond.
}
You step back, watching as it blinks at the world for the first time. Its movements are clumsy and uncertain, muscles still adjusting to existence. You offer no guidance, no reassurance. You want it to learn on its own, as you have, as humans do. 
*[But is it even human?] -> Words

//CONDITIONAL TEXT 2 response depends on what desing route you picked earlier.
==Words
Your only words to {Creature_name} over the next few days revolve around how it was created.
{Chosen_trait == "functionality":
Things such as "you are strong," and "your body was built to endure." 
It immediately instills your value and begins wrapping its identity around your words. Yearning to test its limits and push beyond. 
And whether intended or not, it was taught power and not restraint.
}
{Chosen_trait == "aesthetics":
Things such as "the world will see you and marvel" and "they will love you for your form."
It immediately instills your value and begins wrapping its identity around your words.
And because of this moment, whether intended or not, it learns what you have taught; beauty is the measure of value.
}
{Chosen_trait == "ethics":
Things such as "you are meant to understand" and "to see beyond instinct."
It immediately watches, listens, and learns wrapping its identity around your words. Whether you intend it or not, it learns right from wrong, compassion from cruelty, the weight of choice, and it also begins to see you for who you truly are.
}
    * [Your creation steps into the unknown...] -> Creature_explores

//CONDITIONAL TEXT 3 & 4, depending on what design route you picked earlier you get your different respose route and name choice.
=== Creature_explores ===
//#CLEAR
You allow it to explore the town on its own accord, its first true test of existence.
{Chosen_trait == "functionality":
It wanders to the farmland, watching the workers in the fields. Their hands are rough, their bodies strong. It begins mimicking their movements, learning to lift, build, and last.
Over the next few days, it quickly begins outpacing them and perfecting the craft. Yet, as more and more days pass, there is something missing.
It does not tire, falter, or feel the ache in its muscles as they do. Yet, when the work is done, the others rest. They laugh. They share meals together. They have a purpose beyond labor. But {Creature_name} does not.
It returns to you as it does every night, but this time, its voice is hollow. 
"I do what I was made to do. But is that all? Is there nothing more?"
    *["More?..."]
     ~ Critical_dec = "more"
    -> Critical_point
}
{Chosen_trait == "aesthetics":
It wanders through the alleyways and edges of parks, observing people. It sees couples walking hand in hand, their gazes soft with affection. It witnesses embraces filled with warmth and laughter, humming like a melody. It hears the words "I love you," and a yearning begins to stir deep within {Creature_name}, a hunger for connection, love, and belonging.
But when it finally steps forward to simply push a child on the swing, the world gasps, and eyes widen in terror. 
"Get away from my child," someone shrieks. A man calls it an abomination. Someone hurls a rock. Others follow. 
{Creature_name} does not understand. Was it not made to be adorned? Rejection begins to burn deep within. It's worth shattering completely.
It returns to you as it does every night, but this time, there is desperation in its voice. 
"I… I wish… I wish to know love."
    * ["Love?..."]
    ~ Critical_dec = "love"
    -> Critical_point
}
{Chosen_trait == "ethics":
It wanders to the town and immediately begins listening and watching. From the shadows, it observes an older woman struggling to carry her belongings, her frail arms shaking under the weight. It hears the whispering schemes of crooked police officers, their voices filled with deceit. It witnesses the hollow eyes of a starving child in an alley with soft sobs and whispered pleas. 
Something stirs deep within {Creature_name}, an instinct, a duty to help.
Yet, as soon as it attempts to help, the world is not kind in return. Eyes widen in fear. A man calls it unnatural. Others call it dangerous to stay from it. Footsteps quicken. Doors slam shut. Good intentions are met with terror. 
{Creature_name} does not understand. Was I not made to be good? Misunderstanding sinks deep within.
It returns to you as it does every night, but this time, its expression is bare with sadness in its voice.
"I have learned kindness, yet I am met with fear. I have given, yet I am rejected. What is my purpose?"
    * ["Purpose?..."]
     ~ Critical_dec = "purpose"
    -> Critical_point
}

//DECISION POINT 3,4, & 5 along with 5th conditional from route picked
== Critical_point ==
//#CLEAR
{Critical_dec == "more":
{Creature_name} tells you, "I am strong. I do not tire. I do not weaken. I do not fail." 
He looks at his hands, flexing his fingers, feeling the power within them. 
"And yet, the men in the fields rest. They stop to eat, to drink, to sleep... They, they are fragile? They, they are inefficient!" 
His voice lowers now, as if speaking a revelation. 
"They are lesser..." 
You stare at him.
Looking up and down his body before attempting to respond. You realize for the first time you have created something you yourself fears. But before you can say a word, he continues. 
"Tell me creator... why do they rule over me? Why do you?"

* [Reason with your creation.] 
~ Response = "Reason"
-> Response_function
* [Demand your creation to listen.] 
 ~ Response = "Demand"
-> Response_function
}
{Critical_dec == "love":
"Yes, love, but I'm unsure fully what it is. Do you know what love is?" {Creature_name} asks
"Well, I have my wife, Emely. I suppose that is what we humans do when we love," you responded hesitantly.
It stares at you, with yearning in its eyes growing stronger. 
"Then I must have it," it pleads. "I must have a wife." 
"Love is not just something I can create." 
But the creature does not waver nor care to understand.
"You made me. You can create a wife." Speaking as if not a request but a demand. 
A new creation, a new project, another attempt at molding life where none should exist?
    *[You create a wife.] ->Create_wife_aesthetics
    *[You refuse to create a wife.] -> Wife_dies_ending_aesthetics
}

{Critical_dec == "purpose":
{Creature_name} asks you, "Why did you create me?” 
You hesitate. 
"To see if it was possible to create not just life, but something capable of reason." 
{Creature_name} turns away. 
"And yet, you never even considered if I should exist. I have tried to be good. To help. To understand. But the world rejects me. They see only a mistake, an abomination." 
It looks down at its hands. 
"And they are correct." 
Silence stretches between you before it speaks again. 
"I do not deserve to exist. You must undo what you have done. You must destroy me.” 
Your creation, your life's work, begs for its own end. The very thing you sought to bring into the world now asks to leave it.

* [You destroy your creation.] -> Destroy_ending_ethics
* [You refuse to destroy it.] -> Destroyself_ending_ethics
}

//DESCION POINT 6 and 6th conditional
== Response_function
"Listen..." as you cautiously approach {Creature_name}.

//This response was inspired by something an instructor had told my bf during his calculus class. It resonated with both of us, and I wanted to find a way to include this in my story during this edit.
{Response == "Reason":
"Although you are made for functionality and efficiency, you are alive, and the true value of a living thing is not measured by its efficiency or usefulness. All living things are equally valuable regardless, because they are living beings. And they can't survive without each other."
You say these words, a new revelation for yourself, but they don't seem to sink into its mind. It wasn't created to understand; it was designed to function.
{Creature_name}'s agitation continues to grow. And you realize you only have two choices then.
}

{Response == "Demand":
"Although you were made for strength and functionality. Don't mistake that for superiority," you say firmly.
"Being alive doesn't give you the right to dominate. Life is not about control; it is about coexistence. No matter how powerful you are, you were never meant to stand alone."
You say these words, a new revelation for yourself, but they don't seem to sink into its mind. It wasn't created to understand; it was designed to function.
{Creature_name}'s agitation continues to grow. And you realize you only have two choices then.
}
* [Restrain your creation.] -> Restrain_function
* [Allow your creation to rule itself.] -> Ending_two_function

//ENDING 1: if you go function route and choose to contain it
//In this ending, the creator lives, and creation disappears. In ending 1 & 2 I invite the reader to consider what happens when functionality is pursued at the expense of other values. Yes, something may work functionally, but are we considering long-term use?
==Restrain_function
//#CLEAR
It is too powerful, too unpredictable. 
You realize that you may never regain control if you do not act now.
"I see now. You are right. You were made for more. But even strength must be measured. Come, let me show you something." You gesture toward the office behind him. 
To a creature consumed with proving their strength, they listen. You seize your only opportunity as it turns towards the office and away from you. 
Reaching onto the metal table, a needle filled with one of your concoctions. You pierce its flesh before it can even react. 
His body falters, collapsing under the weight of the sedative. And you drag him to the office, securing him within the reinforced cage, one prepared long before this moment.
Eventually, he awakens. Eyes burning. Locked inside. But not resisting and just sitting there, day in and day out. 
But then, one night, when you check on it, it is gone. The bars are twisted apart, the locks are shattered, and the room is hollow and empty, except for a single truth.
You will spend the rest of your life chasing what you have created.
->Done

//ENDING 2: if you go function route and choose to not contain it
//This ending creator dies, and creation rules its self. In this ending when it comes to UX design I try to leave the readers with a version when funtioanlity is met with no empathy, no feedback loops or even things like shared control.
==Ending_two_function
//#CLEAR
You hesitate. Then slowly, you step back, lowering your arms. 
"You are free to rule yourself." 
He seems to weigh your words carefully. Then, a realization flickers through its gaze. 
"Then I have no need for you," his grim response.
You see it in the way it moves, the decision was made long before you ever spoke. It steps forward, fast, too fast, and before you can react...
You feel pain and your body collapses, vision blurring, fading. And above you, a silhouette stands, looking down. And then it leaves, stepping over you, walking into the world beyond these walls.
A creation with no master.
->Done

//Aesthetics path for creating a wife choice. Shortened this to appear better for the eyes.
==Create_wife_aesthetics
//#CLEAR
You decide to attempt to make it a wife and begin scavenging through what little you have left of rotting remains unfit for your first creation, discarded limbs from failed attempts, and whatever materials you can salvage. 
Hesitantly stitching together flesh that may be too far gone, reinforcing gaps with material, you do what you must to make something whole. 
As the storm reaches its peak per usual, you pull the level and are able to awaken your second creation. 
  *["She is alive"] -> Uncreate_wife_aesthetics
  
== Uncreate_wife_aesthetics
But, the moment her eyes snap open, something is immediately wrong. Her movements are violent, jerky, spasming as if caught in tangled strings. Her breath comes in ragged gasps, her body convulsing with unnatural energy. 
Then she begins clawing at her own skin, peeling away at the seams barely holding her together. A sound escapes her lips, more animal than human. 
You try to steady her, to reason, to contain the chaos, but there seems to be no mind behind those eyes. The moment you touch her, she lashes out, fingers curling into claws, attempting to tear at you.
You quickly realize there is no control. There is no saving it. You reach for the nearest tool, a scalpel, and plunge it deep. 
Again. 
And again. 
Until she is still. 
Until the erratic, thrashing nightmare finally ends. 
You step back, panting, hands trembling, stained with the evidence of your failure. The room reeks of death, burnt material, and rotting flesh.
And then you remember... {Creature_name}. It returns, only for you to tell it the truth that she was imperfect. That she was unstable. That you had no choice.
    *["I had too..."] -> Wife_dies_ending_aesthetics

//ENDING 3: if you go the aesthetics route
//The aesthetics route ends up with one ending, a creator that lives, a creation that feels crushed, and a wife murdered. It is an extreme portrayal of the original story but still attempts to capture the tragedy that Frankenstein evokes.
===Wife_dies_ending_aesthetics===
//#CLEAR
{Creature_name} goes silent, its expression bare. 
It lingers for a moment longer before turning away, disappearing into the night. 
You tell yourself it will understand that it will learn. That it will come to accept your decision.
Hours later, when Emely arrives home, you hear her voice call out from the entryway. A sense of warmth washes over as you step out from the downstairs study to head her way.
"I guess this is love," you think to yourself, smiling.
Until you hear a scream. A struggle. Then silence. 
You run as fast as you can. But then a chill spreads through your body. 
You find her lifeless body, her throat torn open, her eyes wide with fear. You collapse to your knees. 
A shadow lingers by the doorway, just watching.
"You took love from me," it whispers. "Now I take it from you."
The creature vanishes into the darkness, leaving you alone, trapped with the weight of every choice that led you here.
->Done

//ENDING 4: if you down ethics route & choose to destroy creation
==Destroy_ending_ethics
//#CLEAR
To hear your creation beg for its life to end. You felt as though you must.
"Lay down on the table," you tell it. Your voice shaky.
It obeys without hesitation, settling onto the cold metal. When your gaze meets its own, you finally see the depth of its pain, the silent plea for release. The weight of its existence is too heavy for something that was never meant to be. 
Your fingers tremble as you reach for the tools that once gave it life. 
As you begin undoing each stitch, severing every connection, it does not fight. It does not flinch. You question why you had ever created something like this in the first place. Your tears start to blur your vision as you finish. 
And suddenly, it is over. The lab feels emptier than ever before as you stand amidst the dismembered remnants of your life's work. 
You sought to create something greater, something meaningful, yet ended up more hollow and lost. Now, you accept the crushing weight of what you have done. 
->Done

//ENDING 5: if you go down ethics route & choose to not destroy creation.
==Destroyself_ending_ethics
//#CLEAR
{Creature_name} goes silent, its expression empty. It lingers for a moment longer before turning away, disappearing into the night. 
You tell yourself it will understand that it will learn. That it will accept your decision.
Hours later, you find your lab doors ajar. Relief flickers for a moment, perhaps it has returned, realizing it was being irrational. But then you step inside. Silent. Too silent. 
Your breath catches as your eyes land on the corner of the room. There it lies, lifeless, its own hands the instrument of its destruction. You sink to your knees. A note rests beside it reading, "I release you from your failure."
You crumple the paper, the words searing into your mind. You created life, only to watch it unravel under the weight of its own awareness. You thought yourself a creator. But in the end, you were only a witness to something you never truly understood.
->Done

=== Done ===
    -> END
