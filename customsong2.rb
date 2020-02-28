# Welcome to Sonic Pi v3.1
sad="C:/Users/mohamed_badri/Documents/Audacity/sad.wav"
win="C:/Users/mohamed_badri/Documents/Audacity/breth.wav"
fear="C:/Users/mohamed_badri/Documents/Audacity/short.wav"
out="C:/Users/mohamed_badri/Documents/Audacity/thx.wav"
intro="C:/Users/mohamed_badri/Documents/Audacity/intro.wav"
happy="C:/Users/mohamed_badri/Documents/Audacity/happy.wav"
free="C:/Users/mohamed_badri/Documents/Audacity/doufree.wav"
bills="C:/Users/mohamed_badri/Documents/Audacity/freefrombills.wav"
love="C:/Users/mohamed_badri/Documents/Audacity/freetolove.wav"
bars="C:/Users/mohamed_badri/Documents/Audacity/freefrombars.wav"
sing="C:/Users/mohamed_badri/Documents/Audacity/freetosing.wav"
scares="C:/Users/mohamed_badri/Documents/Audacity/freefromscares.wav"
pain="C:/Users/mohamed_badri/Documents/Audacity/freefrompain.wav"
background="C:/Users/mohamed_badri/Documents/Audacity/background.wav"
chosen=dice(2)-1
define :p_f do |x,y,z,a|
  play x, sustain: 3, amp: 0.5
  play y, sustain: 3, amp: 0.5
  play z, sustain: 3, amp: 0.5
  sleep a
end
sample intro, amp: 2
sleep 30.4
sample free, amp: 2
sleep 6
live_loop :background do
  12.times do
    sample background
    sleep 3
  end
  stop
end
use_synth :piano
play :d4
sleep 1
play :d4
sleep 1
play :d4
sleep 1
play :d4
sleep 1
live_loop :intro do
  5.times do
    play :a4, sustain: 3, amp: 0.5
    play :f4, sustain: 3, amp: 0.5
    play :g4, sustain: 3, amp: 0.5
    play :c4, sustain: 3, amp: 0.5
    play :f3, sustain: 3, amp: 0.5
    play :d3, sustain: 3, amp: 0.5
    sleep 0.50
    play :a4, sustain: 3, amp: 0.5
    sleep 0.25
    play :a4, sustain: 3, amp: 0.5
    sleep 0.25
    play :r
    sleep 0.5
    play :g4, sustain: 3, amp: 0.5
    sleep 0.25
    play :g4, sustain: 3, amp: 0.5
    sleep 0.25
    p_f :g4, :d4, :c4, 0.5
    play :f4, sustain: 3, amp: 0.5
    sleep 1
    play :r
    p_f :g3, :e3, :a2, 0.25
    p_f :e4, :d4, :c4, 1
    chosen=dice(6)-1
    random_sample=[bills,love,bars,sing,scares,pain]
    sample random_sample[chosen], amp: 1
    sleep 2
  end
  stop
end
sleep 35
sample fear, amp: 2
sample sad
sleep 5
live_loop :fbvg do
  10.times do
    sample :ambi_dark_woosh, amp: 0.5, rate: 0.5
    sleep 0.5
    sample :ambi_piano, amp: 0.5, rate: 0.5
    sleep 0.5
    sample :ambi_choir, amp: 0.5, rate: 0.3
    sleep 0.5
  end
  stop
end
sleep 24
sample win
sleep 7.7
use_synth :blade
note=[:e3,:e3,:g3,:e3,:r,:d3,:c3,:b2]
n=0
hold=[1.5,0.5,0.75,0.25,0.5,0.5,2,2]
s=0
use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25
x=5
live_loop :white_stripes do
  3.times do
    8.times do
      play note[n]
      n=n+1
      sleep hold[s]
      s=s+1
      x=x-0.5
    end
    if n == 8
      n = 0
    end
    s=0
  end
  stop
end
z=6
live_loop :kcnsl do
  24.times do
    sample :drum_bass_hard, amp: z
    sleep 1
    z=z-0.20
  end
  stop
end
sleep 22
sample out, amp: 6










