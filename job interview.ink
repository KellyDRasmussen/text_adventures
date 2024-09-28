-> start

VAR Machia = 0
VAR Narc = 0
VAR Psych = 0
VAR hire_decision = 0
VAR questions_asked = 0
VAR total_questions = 4
=== function assign_dark_triad_traits ===
~ Machia = RANDOM(0, 1)
~ Narc = RANDOM(0, 1)
~ Psych = RANDOM(0, 1)
=== start ===

~ assign_dark_triad_traits()
You look through the pile of CVs on your desk. One candidate left today. You did not think much of the previous candidates you have already seen. Too shy or too brash. No real culture fit. 
You find the CV you need and skim through it. He has a patchy record, lots of career breaks and frequent changes in company. He came highly recommended by a good friend, so you decided to give him a chance. 
He is shown into the conference room and you nod to James for bringing him through, as you step forward to shake his hand. He smiles broadly and you welcome him.

* [Start the interview] -> question_pool

=== question_pool ===
{ questions_asked == 0: -> ask_question_1 }
{ questions_asked == 1: -> ask_question_2 }
{ questions_asked == 2: -> ask_question_3 }
{ questions_asked == 3: -> ask_question_4 }
{ questions_asked >= total_questions: -> final_decision }

=== ask_question_1 ===
~ questions_asked += 1

Ask the first question:
* [Did you find us alright?] -> answer_0

=== ask_question_2 ===
~ questions_asked += 1

Choose a question to ask the candidate:
* [Can you tell me a bit about yourself?] -> answer_2
* [What are your strengths and weaknesses?] -> answer_5
* [I noticed that you have had a lot of jobs in different fields. What is the thread that ties your career together?] -> answer_6
=== ask_question_3 ===
~ questions_asked += 1
Choose a question to ask the candidate:
* [So, what interests you about this position?] -> answer_1
* [What do you know about our company?] -> answer_3
* [Can you tell me about a time when you had to break the rules to get something done?] -> answer_8

=== ask_question_4 ===
~ questions_asked += 1

Choose a question to ask the candidate:
* [Why did you leave your last job?] -> answer_4
* [How do you handle situations where you have to work as part of a team, but you disagree with your teammates?] -> answer_9
* [Describe a situation where you had to make a difficult decision that affected others. How did you handle it?] -> answer_10
* [We noticed in your aptitude assessment, you made this mistake, can you walk us through it?] -> answer_7

=== answer_0 ===
{ Narc == 1:
    He smiles broadly and shrugs. "It was fine, I used to work in this area so I already knew exactly where I should park."
- else:
    He smiles a little. "I got a bit turned around at the building site but my map app saw me right, thank goodness"
}

* [Next question] -> question_pool

=== answer_1 ===
{ Machia == 1: 
    He nods and points to his CV in front of you. "Like I said in there, I am drawn to this position because it allows me to use my strategic thinking skills to influence company direction and policies. I enjoy being in a position where my ideas can shape the future."
- else:
    He nods and thinks for a beat. "I understand the challenges your company is likely to face in the coming years, especially in areas like ESG. I have the skills and experience to help address these issues effectively, and I'm excited to bring that expertise to your team."
}
* [Next question] -> question_pool

=== answer_2 ===
{ Narc == 1:
He points at the CV. "Yes, of course. It's all in there, as you know. I have many years of experience and would be an asset for your department."
- else:
"I have some experience in projects, especially with a focus on stakeholder management. In my recent role, I worked on initiatives that helped improve team collaboration and made our project timelines a bit more efficient. I’m really excited about this opportunity because I think my skills in governance and cross-functional coordination might be a good fit for your team’s goals."
}
* [Next question] -> question_pool

=== answer_3 ===
{ Machia == 1: 
He smiles and looks around, gesturing at you. "Sure, Craig the head of finance talks about this place all the time and he only has good things to say. It seems like a place where everyone is encouraged to bring their best ideas to the table and work together towards common goals. He makes it sound like such a dynamic and forward-thinking team."
- else:
He grins at you. "I have been such a big fan of your company for years. From your market leading sales to your uncompromising attitude towards sustainability. I really liked the project that you did last year, that really put you on the map."
}

* [Next question] -> question_pool

=== answer_4 ===
{ Psych == 1: 
He nods quickly and leans forward. He uses a stage whisper, "Are you allowed to ask that anymore? Only joking. My last position was at my own company and unfortunately, this economy couldn't support what I was doing. And of course, the previous place, I left because I decided I wanted to start my own business."
- else: 
He smiles and sits up a bit straighter. "It was a tough decision, but I felt that I had reached a point where there wasn't much room left for growth. I wanted to take on new challenges and expand my skills in ways that the company couldn't offer at the time. My previous job was a great learning experience, and I'm grateful for the opportunities I had there, but I felt it was time to move on to something where I could continue growing."
}
* [Next question] -> question_pool

=== answer_5 ===
{ Narc == 1:
"Well, as for weaknesses, it's obviously perfectionism. Haha. And strengths, too many to list."
- else:
He looks into the middle distance for a bit and gives the question some thought. 
"I am very good at getting a good overview of a situation and take in what stakeholders are looking for. But the flipside is that I try to make sure that all their needs and wants are fulfilled which can get very tricky because there are inevitable tradeoffs with all projects like this." 
}
* [Next question] -> question_pool

=== answer_6 ===
{Narc == 1:
He frowns a little and considers the question. "Good question. I guess, when I was younger I was not sure what I wanted to specialize in, so I cast my net widely and tried out lots of things. Also, I was not ready to be just one thing, you know, I needed something to set me apart. The thread that ties it all together is that I find working in a competitive environment where I can prove I'm the best very motivating."
- else:
He nods and smiles. He was expecting this question. "I think what ties my career together is a genuine curiosity and a desire to learn new things. Each role I’ve taken on has offered me an opportunity to grow in different ways, whether it's expanding my skills or understanding different perspectives. I’ve always tried to find roles that align with my core values of making a positive impact. That’s what has guided my decisions and kept me excited about my work."
}
* [Next question] -> question_pool

=== answer_7 ===

{Psych == 1:
His face darkens like a storm, very briefly. If you had blinked, you would have missed it. He recovers quickly and smiles again. "Oh, did I? That's interesting." He takes a look at the paper. "Oh yes, that's quite a vague question, isn't it? Yes. I can see the issue now. Yes. Ok."
- else:
He looks at the assessment paper and reads it through smiling a little. "Oh that's a little embarrassing. What I did there was not read the question properly. The detail I needed was right there. I think if I were to do this all over again, I would have taken more time to read the whole thing first so I could be thinking about all the different problems while I wrote my answers."
}
* [Next question] -> question_pool

=== answer_8 ===
{Machia == 1:
He leans back and smiles broadly, thinking about times that could fit the bill. Then he leans forward and speaks in a low voice so you need to lean in to hear him. 
"Ok, so, I haven't told anyone this before. But at a previous position, they had a lot of red tape that prevented my team from making progress. I found lots of ways of at least BENDING the rules to make things go faster."
- else:
He flushes a little and looks down. "I think it depends what you mean by rules. There are a lot of unbreakable rules out there. Like, you know, the LAW haha but sometimes there are policies that come from a place of good intention that conspire to prevent people from doing their jobs. Sometimes it's better to ask for forgiveness than permission in some companies. But I always tried to get the policy changed if I could. If I couldn't, I usually tried to find another position where my values aligned more closely."
}
* [Next question] -> question_pool

=== answer_9 ===
{Psych == 0:
He smiles and nods. "Yes. That can happen. The thing is, conflict is inevitable. I find that you can waste a lot of time looking for the perfect solution or achieving consensus. Sometimes, what is needed, is someone to take charge. Obviously not every time, sometimes you need to take a beat and find out what other people think. But many times, people need to realize that it's important to act and fix things in the next iteration."
- else:
He smiles subtly, maintaining eye contact. "Absolutely, conflict is part of the job. Honestly, I find that spending too much time trying to make everyone happy is often a waste. Sometimes, what really matters is taking charge and getting things done, regardless of whether everyone is on board at the moment. I can listen and consider others' perspectives when it’s needed, but in most cases, hesitation just holds us back. A strong leader makes decisions and deals with the consequences later.
}
* [Next question] -> question_pool

=== answer_10 ===
{Psych == 1:
"This field is full of difficult decisions that affect other people. And it's sad, of course, but it has to be done. I find ripping off the sticking plaster is the best way. Once I was in charge of a department and we discovered legal problems with our setup. I spent months trying to resolve the issue, and when there was no way forward, I informed the team at the next departmental meeting. It was hard for me, of course."
- else:
"Once, I was in charge of a department, and we discovered legal problems with our setup. It was horrendous—a real mess. But, as is usual with complicated problems, they cannot be solved alone. So, I got some of the team to work on it with me and research some possible solutions. None of the solutions were perfect, which is also usual. However, by involving my team and showing them that I trusted them to figure out what was possible, when I had to make the final call, people felt like every stone had been unturned, and even though it was difficult, we were doing the best thing."
}
* [Next question] -> question_pool

=== final_decision ===
It is the end of the interview. Based on the candidate's responses, do you want to hire him?

* [Yes] -> hire_yes
* [No] -> hire_no

=== hire_yes ===
~ hire_decision = 1
You offer him a job. He accepts immediately. 

-> reveal_traits

=== hire_no ===
~ hire_decision = 0
You have decided not to hire the candidate. 

-> reveal_traits

=== reveal_traits ===
~ temp total_traits = Machia + Narc + Psych

Traits of the candidate:
 Machiavellianism: {Machia}
 Narcissism: {Narc}
 Psychopathy: {Psych}


{ total_traits:
    - 3: Uh-oh! This candidate had all the dark triad traits.
    - 2: Oh dear me. That's a lot to take in. 
    - 1: It's probably fine.
    - 0: There might be other things wrong with him, but none of the dark triad traits are evident.
}



* [End] -> END
