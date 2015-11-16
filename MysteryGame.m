%the facts page is not active
%there is still a save/load gui that does not work yet
%descriptions for all items do not work yet


function MysteryGame
screen1 = figure('Position', [1 1 500 200], 'Name', 'Welcome!');
movegui(screen1,'center');
newplayer = uicontrol('Style', 'pushbutton', 'String', 'New Player', 'Position', [100 150 100 40], 'Callback', @start);
%loadgame = uicontrol('Style', 'pushbutton', 'String', 'Load file. (.txt only)', 'Position', [300 150 100 40], 'Callback', @findgame);
% = uicontrol('Style', 'edit','Position', [300 100 100 40], 'Callback', @checkcorrect);
    function findgame(source,eventdata)
        %load file into fact sheet
    end

    function start (source,eventdata)
        a = figure('Position', [1 1 700 400], 'Name', 'So who are you');
        text1 = uicontrol('Style', 'text','String', 'Character Name: ', 'Position', [30 350 150 40]);
        edit1 = uicontrol('Style', 'edit', 'Position', [190 350 150 40]);
        text2 = uicontrol('Style', 'text', 'String', 'Age: ', 'Position', [350 350 150 40]);
        edit2 = uicontrol('Style', 'edit', 'Position', [510 350 150 40]);
        text3 = uicontrol('Style', 'text','String', 'Hometown: ', 'Position', [30 300 150 40]);
        edit3 = uicontrol('Style', 'edit', 'Position', [190 300 150 40]);
        text4 = uicontrol('Style', 'text', 'String', 'Highschool: ', 'Position', [350 300 150 40]);
        edit4 = uicontrol('Style', 'edit', 'Position', [510 300 150 40]);
        butt1 = uicontrol('Style', 'pushbutton', 'String', 'This is correct', 'Position', [300 250 150 40], 'Callback', @checkcorrect);
        movegui(a,'center');
        set(a, 'Visible', 'on');
        close(screen1)
        
    
        
%          %make txt file for saving
%          %opens a text file to put info into for when you open a item or person
%          %if there is a name and a age the filename will have Name Age with only...
%          %name it will just make Name
%         if isempty(get('String',edit2)) == 1
%             fid = makefile(get(edit1, 'String'));
%         else
%             fid = makefile(get(edit1, 'String'), get(edit2, 'String'));
%         end
%          function newname = makefile (varargin)
%             if nargin == 1
%                 filename = get('String', edit1);
%             else
%                 name1 = get('String', edit1);
%                 age1 = get('String', edit2);
%                 filename = sprintf('%s %s', name1, age1);
%             end
%              
%              
%                      fid = fopen(sprintf('%s.txt', filename), 'w');
%                      test = figure('Position', [1 1 1000 600], 'Name', 'Let us get this show on the road then');
%                      fclose(fid);
%           end
        
        
        function checkcorrect(source, eventdata)
            name = get(edit1, 'String');
            age = get(edit2, 'String');
            hometown = get(edit3, 'String');
            highschool = get(edit4, 'String');
            bio{1} = name;
            bio{2} = age;
            bio{3} = hometown;
            bio{4} = highschool;
            newbio = {};
%             for i = 1:4
%                 if isempty(bio{i}) ~= 1
%                     newbio{i} = bio{i};
%                 end;
%             end            
%             printfile(newbio);
%             
            close (a)           
            b = figure('Position', [1 1 1000 600], 'Name', 'Let us get this show on the road then');
            movegui(b,'center')
            text1 = uicontrol('Style', 'text','String', 'name:', 'Position', [1 600 50 25]);

            static1=uicontrol('Style', 'text','String','People:','Position',[425 490 100 25]);
            static2=uicontrol('Style', 'text','String','Places:','Position',[425 280 100 25]);
            static3=uicontrol('Style', 'text','String','Care to wager a guess?:','Position',[100 10 150 50]);
            edit1=uicontrol('Style','edit','Position',[300 10 150 50]);
            
            button1=uicontrol('Style','pushbutton','String','Thomas Carlino','Position',[100 425 150 50],'Callback',@Thomas);
            button2=uicontrol('Style','pushbutton','String','Panos Skoufalous','Position',[300 425 150 50],'Callback',@Panos);
            button3=uicontrol('Style','pushbutton','String','Katie Lewis','Position',[500 425 150 50],'Callback',@Katie);
            button4=uicontrol('Style','pushbutton','String','Michael Young','Position',[700 425 150 50],'Callback',@Michael);
            
            button5=uicontrol('Style','pushbutton','String','Amy Mauro','Position',[100 325 150 50],'Callback',@Amy);
            button6=uicontrol('Style','pushbutton','String','India Crum','Position',[300 325 150 50],'Callback',@India);
            button7=uicontrol('Style','pushbutton','String','Claire Duncan','Position',[500 325 150 50],'Callback',@Claire);
            button8=uicontrol('Style','pushbutton','String','Jordan Siebold','Position',[700 325 150 50],'Callback',@Jordan);
            
            button9=uicontrol('Style','pushbutton','String','Kitchen','Position',[100 215 150 50],'Callback',@Kitchen);
            button10=uicontrol('Style','pushbutton','String','Panos Room','Position',[300 215 150 50],'Callback',@PanosRoom);
            button11=uicontrol('Style','pushbutton','String','Katies Room','Position',[500 215 150 50],'Callback',@KatiesRoom);
            button12=uicontrol('Style','pushbutton','String','Jack and Claires Room','Position',[700 215 150 50],'Callback',@JackAndClaire);
            
            button13=uicontrol('Style','pushbutton','String','Michaels Room','Position',[100 115 150 50],'Callback',@MichaelsRoom);
            button14=uicontrol('Style','pushbutton','String','Indias Room','Position',[300 115 150 50],'Callback',@IndiasRoom);
            button15=uicontrol('Style','pushbutton','String','Amys Room','Position',[500 115 150 50],'Callback',@AmysRoom);
            button16=uicontrol('Style','pushbutton','String','Jordans Room','Position',[700 115 150 50],'Callback',@JordansRoom);
            
            button17=uicontrol('Style','pushbutton','String','Facts','Position',[100 550 150 50],'Callback',@Facts);
            button18=uicontrol('Style','pushbutton','String','Quit','Position',[700 550 150 50],'Callback',@Quit);
            button19=uicontrol('Style','pushbutton','String','Is that really what you think?','Position',[500 10 150 50],'Callback',@Yousure);
            
                
            
           
            
            
            
            thomasdes ='The chef of the ship. No one knows much about him except for the fact that he makes the food. You did notice however he seems to have a lot of cuts on his person, but what chef doesn’t cut himself right? Riiiight?';
            panosdes = 'One of the waitors/ cleaners on the yacht. Not too bad on the eyes, certainly has a way with the ladies. You know he dealt with Jack back in high school and that they had a tiff senior year that had something to do with drugs, but why would he still care about that?';
            katiedes = 'Head cheerleader in highschool. She dated Michael Young all four years of high school. The girl everyone secretly hated but would never confront her. Rumor is she and jack hooked up in high school but she would never admit that. Trying to get rid of your past Katie?';
            michaeldes = 'The schools environmentalist. His life was heading nowhere but up: beautiful cheerleader girlfriend, rich family, heading to a good school, when one day he heard a rumor that Jack hooked up with his girlfriend and suddenly his life fell. He went crazy and is now on his fourth year of a two year degree. Little bitter Michael?';
            amydes = 'High school gossip queen if there is one. She had a remarkable ability to find out your deepest darkest secrets without you knowing. Wonder if she found out something she was not supposed to?';
            indiades = 'Drama queen. This girl has been getting into trouble since middle school. She had a baby sophomore year and it sure does look like a mini Jack. Although, why would she want to kill him if she needed his child support?';
            clairedes = 'The grieving girlfriend. Jack and Claire had been together since junior year. They went to a local college together and spent all of their time together. Rumor is they were destined to be married soon. Could she have changed her mind after everything they have been through together?';
            jordandes = 'No one is really sure what Jordan does with her time. She seems to just lurk around not really interested in much. She had a few friends but no close ones. She was known for having bipolar tendencies and would randomly burst out screaming at people.';
            descript{1} = thomasdes;
            descript{2} = panosdes;
            descript{3} = katiedes;
            descript{4} = michaeldes;
            descript{5} = amydes;
            descript{6} = indiades;
            descript{7} = clairedes;
            descript{8} = jordandes;
            
            Couchdes = 'This is strange it looks like someone has been sleeping here. I wonder who.';
            Magazinesdes = 'Cool! Look polar bear magazines. I didn’t know Jack cared about the environment.';
            Luggagedes = 'Phew they brought so much stuff! This is enough for 5 people. Oh Wait… this is just Claire’s stuff';
            Ovendes = 'Wow that’s hotter than the hot fiery intensity of 1000 burning suns.';
            Refrigeratordes = 'This thing is brimming with delicious food. I just wish they would serve it to the passengers';
            Cutlerydes = 'Hmmm for being such a nice kitchen a lot of these knives are missing.';
            Dresserdes = 'With this many grooming tools I’m surprised he doesn’t look Orlando Bloom. Well actually…';
            Beddes = 'This thing is a mess. It looks like he takes everything he cleans on the ship and throws it on his bed';
            CleaningToolsdes = 'Well don’t these look way to clean to fit this room. Why’d he clean his cleaning tools';
            Picturesdes = 'Someone cares about their appearance. She’s got so many pictures of herself she is so self-absorbed.';
            Diarydes = 'Tehe. It’s her diary. WOW she must not have been happy with Michael and there’s this page that ends with Jack’s name. Where’s the next one?';
            Liquiddes = 'This smells delicious maybe I should try it. Wait I remember what happened last time I drank strange liquids.';
            Possessionsdes = 'Wow all of this stuff is so cheap, all of it is Wal-Mart brand.';
            Teddy = 'Awww. It’s adorable he still has his teddy bear at this age. That’s so sweet.';
            JacksPhone = 'What? Is Jack’s phone doing here? This is highly suspicious, but an Iphone 5 I might just steal this too.';
            Gossipdes = 'E Magazine? What is with this girl who would ever read this.';
            AmyPhone = 'She’s got a phone too, but at least this one is still with the current owner.';
            TVdes = 'Wow I bet she must have been in a hurry the tv is still on. Oh! Look the Bengals are beating the Steelers 24- 3.';
            Wardrobedes = 'Golly. Some of the clothes in here can’t even be called clothes and I have to say it’s not a classy look.';
            Trashdes = 'This things is brimming with cigarettes. This does not surprise me with the way that she smells. Yuck.';
            Unpaiddes = 'That’s some serious debt. I wonder how she’s gonna get them paid. Wait if Jack die.. then…';
            Maildes = 'A note from her shrink? Maybe there are some actual issues with her. I wonder how serious it is.';
            Bowldes = 'I used to think she was crazy, but now I can see that she’s nuts.';
            Teledes = 'Really? She left her tv on. She hasn’t been here all day. First she left the lights on and now this. Shame.';
            item{1} = Couchdes;
            item{2} = Magazinesdes;
            item{3} = Luggagedes;
            item{4} = Ovendes;
            item{5} = Refrigeratordes;
            item{6} = Cutlerydes;
            item{7} = Dresserdes;
            item{8} = Beddes;
            item{9} = CleaningToolsdes;
            item{10} = Picturesdes;
            item{11} = Diarydes;
            item{12} = Liquiddes;
            item{13} = Possessionsdes;
            item{14} = Teddy;
            item{15} = JacksPhone;
            item{16} = Gossipdes;
            item{17} = AmyPhone;
            item{18} = TVdes;
            item{19} = Wardrobedes;
            item{20} = Trashdes;
            item{21} = Unpaiddes;
            item{22} = Maildes;
            item{23} = Bowldes;
            item{24} = Teledes;
            
             alibi{1} = 'I was on my break. I had cooked food for all day and I told my boss once I put everything away. I was going out on my break. You can ask Michael I passed him in the hall leaving and I talked with Claire until my break was interrupted.';
             alibi{2} = 'I was busy talking to some nice ladies. You can ask them I’m sure they remember me. I mean really who could forget me.';
             alibi{3} = 'I was tanning out on the deck. You can ask everyone. I’m sure they saw me. It’s not my fault that I’m so irresitable. Even that cute janitor couldn’t handle my looks. He ran off and started talking to some other girls, but hey I was too good for him anyways.';
             alibi{4} = 'I went back to my room early I was feeling seasick, so I spent all my time there. I always get seasick, so I don’t know why I came.';
             alibi{5} = 'I was talking to everybody. I had to do some catching up. Find out what people are doing with their lives, but I never saw Michael. I did not get any new dirt on him, but that’s fine I got gossip from everyone else.';
             alibi{6} = '- I was with some stranger deal with it.';
             alibi{7} = '- I was trying to avoid Jordan truthfully. I did not want to be mean, but I really could not stand her. I told India to tell her that I went to the kitchen with Michael.';
             alibi{8} = 'I was tryoing to fine someone to talk to and nobody would talk, so I went chasing after Claire and saw India. Then I saw Michael leaving the kitchen, but Claire was not in there.';
            
            
            
            function Thomas(source,eventdata)
                c=figure('Position',[1 1 300 300], 'Name', 'Thomas Carlino');
                movegui(c,'center')
                %       static1=uicontrol('Style','text','String','The chef of the ship. No one knows much about him except for the fact that he makes the food. You did notice however he seems to have a lot of cuts on his person, but what chef doesn’t cut himself right? Riiiight?','Position',[50 150 200 100]);
                static1=uicontrol('Style','text','String',descript{1} ,'Position',[50 200 200 100]);
                static2=uicontrol('Style','text','String',alibi{1} ,'Position',[50 50 150 100]);

                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', descript{1})
                fclose(fid);
            end
            function Panos(source,eventdata)
                c=figure('Position',[1 1 300 300],'Name','Panos Skoufalous');
                movegui(c,'center')
                static1=uicontrol('Style','text','String',descript{2} ,'Position',[50 200 200 100]);
                static2=uicontrol('Style','text','String',alibi{2} ,'Position',[50 50 150 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', descript{2})
                fclose(fid);
            end
            function Katie(source,eventdata)
                e=figure('Position',[1 1 300 300],'Name','Katie Lewis');
                movegui(e,'center')
                static1=uicontrol('Style','text','String',descript{3} ,'Position',[50 200 200 100]);
                static2=uicontrol('Style','text','String',alibi{3} ,'Position',[50 50 150 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', descript{3})
                fclose(fid);
            end
            function Michael(source,eventdata)
                f=figure('Position',[1 1 300 300],'Name','Michael Young');
                movegui(f,'center')
                static1=uicontrol('Style','text','String',descript{4} ,'Position',[50 200 200 100]);
                static2=uicontrol('Style','text','String',alibi{4} ,'Position',[50 50 150 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', descript{4})
                fclose(fid);
            end
            function Amy(source,eventdata)
                g=figure('Position',[1 1 300 300],'Name','Amy Mauro');
                movegui(g,'center')
                static1=uicontrol('Style','text','String',descript{5} ,'Position',[50 200 200 100]);
                static2=uicontrol('Style','text','String',alibi{5} ,'Position',[50 50 150 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', descript{5})
                fclose(fid);
            end
            function India(source,eventdata)
                h=figure('Position',[1 1 300 300],'Name','India Crum');
                movegui(h,'center')
                static1=uicontrol('Style','text','String',descript{6} ,'Position',[50 200 200 100]);
                static2=uicontrol('Style','text','String',alibi{6} ,'Position',[50 50 150 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', descript{6})
                fclose(fid);
            end
            function Claire(source,eventdata)
                i=figure('Position',[1 1 300 300],'Name','Claire Duncan');
                movegui(i,'center')
                static1=uicontrol('Style','text','String',descript{7} ,'Position',[50 200 200 100]);
                static2=uicontrol('Style','text','String',alibi{7} ,'Position',[50 50 150 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', descript{7})
                fclose(fid);
            end
            function Jordan(source,eventdata)
                j=figure('Position',[1 1 300 300],'Name','Jordan Siebold');
                movegui(j,'center')
                static1=uicontrol('Style','text','String',descript{8} ,'Position',[50 200 200 100]);
                static2=uicontrol('Style','text','String',alibi{8} ,'Position',[50 50 150 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', descript{8})
                fclose(fid);
            end
            
            function Kitchen(source,eventdata)
                c=figure('Position',[1 1 550 300], 'Name', 'Kitchen Items');
                movegui(c,'center')
                kitchenbutton1 =uicontrol('Style','pushbutton','String','Oven','Position',[10 250 150 50],'Callback',@Oven);
                kitchenbutton2 =uicontrol('Style','pushbutton','String','Refrigerator','Position',[170 250 150 50],'Callback',@Refrigerator);
                kitchenbutton3 =uicontrol('Style','pushbutton','String','Cutlery','Position',[330 250 150 50],'Callback',@Cutlery);
            end
            function PanosRoom(source,eventdata)
                c=figure('Position',[1 1 550 300], 'Name', 'Panos Items');
                movegui(c,'center')
                panosbutton1 =uicontrol('Style','pushbutton','String','Dresser','Position',[10 250 150 50],'Callback',@dresser);
                panosbutton2 =uicontrol('Style','pushbutton','String','Bed','Position',[170 250 150 50],'Callback',@Bed);
                panosbutton3 =uicontrol('Style','pushbutton','String','Cleaning Tools','Position',[330 250 150 50],'Callback',@Cleaning);
            end
            function KatiesRoom(source,eventdata)
                c=figure('Position',[1 1 550 300], 'Name', 'Katie Room');
                movegui(c,'center')
                katiebutton1 =uicontrol('Style','pushbutton','String','Picture','Position',[10 250 150 50],'Callback',@Picture);
                katiebutton2 =uicontrol('Style','pushbutton','String','Diary','Position',[170 250 150 50],'Callback',@Diary);
                katiebutton3 =uicontrol('Style','pushbutton','String','Suspicious Liquid','Position',[330 250 150 50],'Callback',@Liquid);
            end
            function MichaelsRoom(source,eventdata)
                c=figure('Position',[1 1 550 300], 'Name', 'Michael Room');
                movegui(c,'center')
                michaelbutton1 =uicontrol('Style','pushbutton','String','Possessions','Position',[10 250 150 50],'Callback',@possessions);
                michalebutton2 =uicontrol('Style','pushbutton','String','Teddy Bear','Position',[170 250 150 50],'Callback',@bear);
                michaelbutton3 =uicontrol('Style','pushbutton','String','Jack Phone','Position',[330 250 150 50],'Callback',@Jackphone);
            end
            function AmysRoom(source,eventdata)
                c=figure('Position',[1 1 550 300], 'Name', 'Amy Room');
                movegui(c,'center')
                Amybutton1 =uicontrol('Style','pushbutton','String','Gossip Magazines','Position',[10 250 150 50],'Callback',@Magazine);
                Amybutton2 =uicontrol('Style','pushbutton','String','Amy Phone','Position',[170 250 150 50],'Callback',@Amyphone);
                Amybutton3 =uicontrol('Style','pushbutton','String','Television Liquid','Position',[330 250 150 50],'Callback',@Tv);
            end
            function IndiasRoom(source,eventdata)
                c=figure('Position',[1 1 550 300], 'Name', 'India Room');
                movegui(c,'center')
                Indiabutton1 =uicontrol('Style','pushbutton','String','Wardrobe','Position',[10 250 150 50],'Callback',@Wardrobe);
                Indiabutton2 =uicontrol('Style','pushbutton','String','Trash Can','Position',[170 250 150 50],'Callback',@Trash);
                Indiabutton3 =uicontrol('Style','pushbutton','String','Bills','Position',[330 250 150 50],'Callback',@Bills);
            end
            function JackAndClaire(source,eventdata)
                c=figure('Position',[1 1 550 300], 'Name', 'Jack and Claire Room');
                movegui(c,'center')
                Clairebutton1 =uicontrol('Style','pushbutton','String','Couch','Position',[10 250 150 50],'Callback',@Couch);
                Clairebutton2 =uicontrol('Style','pushbutton','String','Magazines','Position',[170 250 150 50],'Callback',@Mags);
                Clairebutton3 =uicontrol('Style','pushbutton','String','Luggage','Position',[330 250 150 50],'Callback',@Luggage);
            end
            function JordansRoom(source,eventdata)
                c=figure('Position',[1 1 550 300], 'Name', 'Jordan Room');
                movegui(c,'center')
                Jordanbutton1 =uicontrol('Style','pushbutton','String','Mail','Position',[10 250 150 50],'Callback',@Mail);
                Jordanbutton2 =uicontrol('Style','pushbutton','String','Bowl of Cashews','Position',[170 250 150 50],'Callback',@Cashews);
                Jordanbutton3 =uicontrol('Style','pushbutton','String','Television','Position',[330 250 150 50],'Callback',@Tele);
            end
            
            function Oven(source,eventdata)
                aa=figure('Position',[1 1 300 300],'Name','Oven');
                movegui(aa,'center')
                static1=uicontrol('Style','text','String', item{4},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{4})
                fclose(fid);
            end
            function Refrigerator(source,eventdata)
                bb=figure('Position',[1 1 300 300],'Name','Refrigerator');
                movegui(bb,'center')
                static1=uicontrol('Style','text','String', item{5},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{5})
                fclose(fid);
            end
            function Cutlery(source,eventdata)
                cc=figure('Position',[1 1 300 300],'Name','Cutlery');
                movegui(cc,'center')
                static1=uicontrol('Style','text','String', item{6},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{6})
                fclose(fid);
            end
            function dresser(source,eventdata)
                dd=figure('Position',[1 1 300 300],'Name','Dresser');
                movegui(dd,'center')
                static1=uicontrol('Style','text','String', item{7},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{7})
                fclose(fid);
            end
            function Bed(source,eventdata)
                ee=figure('Position',[1 1 300 300],'Name','Bed');
                movegui(ee,'center')
                static1=uicontrol('Style','text','String', item{8},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{8})
                fclose(fid);
            end
            function Cleaning(source,eventdata)
                ff=figure('Position',[1 1 300 300],'Name','Cleaning');
                movegui(ff,'center')
                static1=uicontrol('Style','text','String', item{9},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{9})
                fclose(fid);
            end
            function Picture(source,eventdata)
                gg=figure('Position',[1 1 300 300],'Name','Picture');
                movegui(gg,'center')
                static1=uicontrol('Style','text','String', item{10},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{10})
                fclose(fid);
            end
            function Diary(source,eventdata)
                hh=figure('Position',[1 1 300 300],'Name','Diary');
                movegui(hh,'center')
                static1=uicontrol('Style','text','String', item{11},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{11})
                fclose(fid);
            end
            function Liquid(source,eventdata)
                ii=figure('Position',[1 1 300 300],'Name','Liquid');
                movegui(ii,'center')
                static1=uicontrol('Style','text','String', item{12},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{12})
                fclose(fid);
            end
            function possessions(source,eventdata)
                jj=figure('Position',[1 1 300 300],'Name','Michael possessions');
                movegui(jj,'center')
                static1=uicontrol('Style','text','String', item{13},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{13})
                fclose(fid);
            end
            function bear(source,eventdata)
                kk=figure('Position',[1 1 300 300],'Name','Teddy Bear');
                movegui(kk,'center')
                static1=uicontrol('Style','text','String', item{14},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{14})
                fclose(fid);
            end
            function Jackphone(source,eventdata)
                ll=figure('Position',[1 1 300 300],'Name','Jack Phone');
                movegui(ll,'center')
                static1=uicontrol('Style','text','String', item{15},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{15})
                fclose(fid);
            end
            function Magazine(source,eventdata)
                mm=figure('Position',[1 1 300 300],'Name','E Magazine');
                movegui(mm,'center')
                static1=uicontrol('Style','text','String', item{2},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{16})
                fclose(fid);
            end
            function Amyphone(source,eventdata)
                nn=figure('Position',[1 1 300 300],'Name','Amy Phone');
                movegui(nn,'center')
                static1=uicontrol('Style','text','String', item{17},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{17})
                fclose(fid);
            end
            function Tv(source,eventdata)
                oo=figure('Position',[1 1 300 300],'Name','Television');
                movegui(oo,'center')
                static1=uicontrol('Style','text','String', item{18},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{18})
                fclose(fid);
            end
            function Wardrobe(source,eventdata)
                ll=figure('Position',[1 1 300 300],'Name','Wardrobe');
                movegui(ll,'center')
                static1=uicontrol('Style','text','String', item{19},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{19})
                fclose(fid);
            end
            function Trash(source,eventdata)
                pp=figure('Position',[1 1 300 300],'Name','Trash Can');
                movegui(pp,'center')
                static1=uicontrol('Style','text','String', item{20},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{20})
                fclose(fid);
            end
            function Bills(source,eventdata)
                qq=figure('Position',[1 1 300 300],'Name','Bills');
                movegui(qq,'center')
                static1=uicontrol('Style','text','String', item{21},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{21})
                fclose(fid);
            end
            function Couch(source,eventdata)
                rr=figure('Position',[1 1 300 300],'Name','Couch');
                movegui(rr,'center')
                static1=uicontrol('Style','text','String', item{1},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{1})
                fclose(fid);
            end
            function Mags(source,eventdata)
                ss=figure('Position',[1 1 300 300],'Name','Enviormental Magazines');
                movegui(ss,'center')
                static1=uicontrol('Style','text','String', item{16},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{2})
                fclose(fid);
            end
            function Luggage(source,eventdata)
                tt=figure('Position',[1 1 300 300],'Name','Luggage');
                movegui(tt,'center')
                static1=uicontrol('Style','text','String', item{3},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{3})
                fclose(fid);
            end
            function Mail(source,eventdata)
                uu=figure('Position',[1 1 300 300],'Name','Mail');
                movegui(uu,'center')
                static1=uicontrol('Style','text','String', item{22},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{22})
                fclose(fid);
            end
            function Cashews(source,eventdata)
                vv=figure('Position',[1 1 300 300],'Name','Bowl of Cashews');
                movegui(vv,'center')
                static1=uicontrol('Style','text','String', item{23},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{23})
                fclose(fid);
            end
            function Tele(source,eventdata)
                ww=figure('Position',[1 1 300 300],'Name','Television');
                movegui(ww,'center')
                static1=uicontrol('Style','text','String', item{24},'Position',[50 150 200 100]);
                fid = fopen('facts.txt', 'w');
                fprintf(fid, '%s\n', item{24})
                fclose(fid);
            end
            function Yousure(source, eventdata)
               guess = get(edit1, 'String');
               if strcmp(guess, 'Michael') || strcmp(guess,'michael')
                   d = figure('Position', [1 1 300 300], 'Name', 'Winner');
                   movegui(d,'center')
                   static1 = uicontrol('Style', 'text','String','Congratulations! Michael Young was the murderer.','Position',[50 150 200 100]);
               else
                   d = figure('Position', [1 1 300 300], 'Name', 'Loser');
                   movegui(d,'center')
                   static1 = uicontrol('Style', 'text','String','WRONG. You are going to jail','Position',[50 150 200 100]);
               end
            end
            function Facts(source, eventdata)
                fid = fopen('facts.txt')
                text = load(fid)
                z = figure('Position', [1 1 1000 600], 'Name', 'facts');
            movegui(z,'center')
            text1 = uicontrol('Style', 'text','String', text, 'Position', [1 1 600 400]);
            end
        end
    end
end
function printfile(varargin)
            fid = fopen('PersonalBiog.txt', 'w');
            if nargin == 1
                fprintf(fid, '%s\n', varargin{1}{1})
            elseif nargin == 2
                    fprintf(fid, '%s\n %s\n', varargin{1}{1}, varargin{1}{2})
            elseif nargin == 3
                    fprintf(fid, '%s\n %s\n %s\n', varargin{1}{1}, varargin{1}{2}, varargin{1}{3})
            elseif nargin == 4
                        fprintf(fid, '%s\n %s\n %s\n %s\n', varargin{1}{1}, varargin{1}{2}, varargin{1}{3}, varargin{1}{4})
            end
            fclose(fid);
end