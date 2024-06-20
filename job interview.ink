You look through the pile of CVs on your desk. One candidate left today. You did not think much of the previous candidates you have already seen. Too shy or too brash. No real culture fit. 
You find the CV you need and skim through it. He has a patchy record, lots of career breaks and frequent changes in company. He came highly recommended by a good friend, so you decided to give him a chance. 
He is shown into the conference room and you nod to James for bringing him through, as you step forward to shake his hand. He smiles broadly and you welcome him.
* [Start the interview] -> question_pool

VAR hire_decision = 0
VAR questions_asked = 0
VAR total_questions = 4
VAR question_asked_0 = false
VAR question_asked_1 = false
VAR question_asked_2 = false
VAR question_asked_3 = false
VAR question_asked_4 = false
VAR question_asked_5 = false
VAR question_asked_6 = false
VAR question_asked_7 = false
VAR question_asked_8 = false
VAR question_asked_9 = false
VAR question_asked_10 = false
VAR psychopathic_traits = true





=== question_pool ===
~ question_asked_0 = false
~ question_asked_1 = false
~ question_asked_2 = false
~ question_asked_3 = false
~ question_asked_4 = false
~ question_asked_5 = false
~ question_asked_6 = false
~ question_asked_7 = false
~ question_asked_8 = false
~ question_asked_9 = false
~ question_asked_10 = false

-> ask_question

=== ask_question ===
~ questions_asked += 1

Choose a question to ask the candidate:
{not question_asked_0: 
    * [Did you find us alright?] -> answer_0
}
{not question_asked_1: 
    * [So, what interests you about this position?] -> answer_1
}
{not question_asked_2: 
    * [Can you tell me a bit about yourself?] -> answer_2
}
{not question_asked_3: 
    * [What do you know about our company?] -> answer_3
}
{not question_asked_4: 
    * [Why did you leave your last job?] -> answer_4
}
{not question_asked_5: 
    * [What are your strengths and weaknesses?] -> answer_5
}
{not question_asked_6: 
    * [I noticed that you have had a lot of job in different fields. What is the thread that ties your career together?] -> answer_6
}
{not question_asked_7: 
    * [We noticed in your aptitude assessment, you made this mistake, can you walk us through it?] -> answer_7
}
{not question_asked_8: 
    * [Can you tell me about a time when you had to break the rules to get something done?] -> answer_8
}
{not question_asked_9: 
    * [How do you handle situations where you have to work as part of a team, but you disagree with your teammates?] -> answer_9
}
{not question_asked_10: 
    * [Describe a situation where you had to make a difficult decision that affected others. How did you handle it?] -> answer_10
}

=== answer_0 ===
He smiles broadly and shrugs. "It was fine, I used to work in this area so I already knew exactly where I should park."
~ question_asked_0 = true
* [Next question] -> next_question

=== answer_1 ===
He nods and points to his cv in front of you. "Like I said in there, I am drawn to this position because it allows me to use my strategic thinking skills to influence company direction and policies. I enjoy being in a position where my ideas can shape the future."
~ question_asked_1 = true
* [Next question] -> next_question

=== answer_2 ===
He points at the cv. "Yes, of course. It's all in there, as you know. I have many years experience and would be an asset for your department."
~ question_asked_2 = true
* [Next question] -> next_question

=== answer_3 ===
He smiles and looks around, gesturing at you. "Sure, Craig the head of finance talks about this place all the time and he only has good things to say. It seems like a place where everyone is encouraged to bring their best ideas to the table and work together towards common goals. He makes it sound like such a dynamic and forward-thinking team."

~ question_asked_3 = true
* [Next question] -> next_question

=== answer_4 ===
He nods quickly and leans forward. He uses a stage whisper "Are you allowed to ask that any more? Only joking. My last position was at my own company and unfortunately this economy couldn't support what I was doing. And of course, the previous place, I left because I decided I wanted to start my own business." 
~ question_asked_4 = true
* [Next question] -> next_question

=== answer_5 ===
"Well, as for weaknesses, it's obviously perfectionism. Hahah. And strengths, too many to list."
~ question_asked_5 = true
* [Next question] -> next_question

=== answer_6 ===
He frowns a little and considers the question. "Good question. I guess, when I was younger I was not sure what I wanted to specialise in, so I cast my net widely and tried out lots of things. Also, I was not ready to be just one thing, you know, I needed something to set me apart. The thread that ties it all together is that I find working in a competitive environment where I can prove I'm the best very motivating."

~ question_asked_6 = true
* [Next question] -> next_question

=== answer_7 ===
His face darkens like a storm, very briefly. If you had blinked, you would have missed it. He recovers quickly and smiles again.
"Oh, did I? That's interesting." He takes a look at the paper. "Oh yes, that's quite a vague question, isn't it? Yes. I can see the issue now. Yes. Ok."
~ question_asked_7 = true
* [Next question] -> next_question

=== answer_8 ===
He leans back and smiles broadly, thinking about times that could fit the bill. Then he leans forward and speaks in a low voice so you need to lean in to hear him. 
"Ok, so, I haven't told anyone this before. But at a previous position, they had a lot of red tape that prevented my team from making progress. I found lots of ways of at least BENDING the rules to make things go faster."
~ question_asked_8 = true
* [Next question] -> next_question

=== answer_9 ===
He smiles and nods. "Yes. That can happen. The thing is, conflict is inevitable. I find that you can waste a lot of time looking for the perfect solution or achieving consensus. Sometimes, what is needed, is someone to take charge. Obviously not every time, sometimes you need to take a beat and find out what other people think. But many times, people need to realise that it's important to act and fix things in the next iteration."
~ question_asked_9 = true
* [Next question] -> next_question

=== answer_10 ===
"This field is full of difficult decisions that affect other people. And it's sad, of course, but it has to be done. I find ripping off the sticking plaster is the best way. Once I was in charge of a department and we discovered legal problems with our setup. I spent months trying to resolve the issue and when there was no way forward, I informed the team at the next departmental meeting. It was hard for me, of course."
~ question_asked_10 = true
* [Next question] -> next_question

=== next_question ===
{ questions_asked < total_questions:
    -> ask_question
- else:
    -> final_decision
}

=== final_decision ===
You have asked all the questions. Based on the candidate's responses, do you want to hire them?

* [Yes] -> hire_yes
* [No] -> hire_no

=== hire_yes ===
~ hire_decision = 1
You have decided to hire the candidate. Let's see if they have psychopathic traits...

-> reveal_traits

=== hire_no ===
~ hire_decision = 0
You have decided not to hire the candidate. Let's see if they have psychopathic traits...

-> reveal_traits

=== reveal_traits ===
{hire_decision == 1:
    The candidate you hired has ${psychopathic_traits}. (insert logic for psychopathic traits)
- else:
    The candidate you didn't hire has ${psychopathic_traits}. (insert logic for psychopathic traits)
}
* [End] -> END

* [End] -> END
