# CS4414 Syllabus

Last updated: January 10, 2024

Notes: 

**Should link to multiple pages.** 

Inform students: servers may crash at any time. Save files 

## LOGISTICS

### Meetings

Tuesday, Thursday (01/17/2024 to 04/30/2024)        
02:00 PM - 03:15 PM      
Thornton Hall E316

Zoom/recordings will be available

### Instruction team

**Instructor**
Prof. Felix Lin 				xl6yq@virginia.edu
**TAs** 
Wonkyo Choe (PhD student) 			bfr4xr@virginia.edu
Rongxiang Wang (PhD student) 			waq9hw@virginia.edu

**Office hours:**
Mon  4-5p           
Tue   1030-1130a          
Thu  330-430p            
Location: Rice 442

## GRADING & SUBMISSION

### Projects

Most of your time (like >80%) will be spent on four projects.

| **Project**     | Weights | **You will  build ...**                             | **Learning  objectives**                                     |
| --------------- | ------- | --------------------------------------------------- | ------------------------------------------------------------ |
| p1: kernel      | 40      | A tiny, modern kernel for Raspberry Pi 3            | Roll-your-own kernel, baremetal programming, Armv8, SoC hardware |
| p2: concurrency | 20      | Scaling up data structures on multicores            | Programming  a large number of cores, profiling, performance debugging |
| p3: TEE         | 25      | A machine learning service secured by Arm TrustZone | Security, hardware-based isolation, embedded  AI             |
| p4:persistence  | 10      | Filesystem image forensics                          | Reverse engineering, binary data structures, working with filesystems |
| Participation   | 5       |                                                     |                                                              |

* Each project has one or more assignments. Each assignment may have a different weight.
* We will provide a calculator (an excel file, downloadable from the LMS (learning management system), “Files”), which can calculate your total raw points

### (Late) submissions

Submissions are done via the UVA LMS. Submission will be closed after the deadline. 

Once the submission is closed, do NOT email the instructor or the TAs. Such emails will be automatically ignored. 

All submissions are due **at 5pm**. **NOT the midnight**. 

### Accommodations

To accommodate students': 

career development, health issues, family and/or personal emergency, busy study and life schedule, personal network failures, power outage, broken laptops, accidental loss of code, misread of the deadlines, forgetting to submit, forgetting passwords, unable to use the LMS while others can, unable to compress/upload the code, as well as other unexpected life events, we have the following policy: 

**At the end of the semester, the two assignments (NOT projects) with lowest scores will be automatically dropped.** 

No additional requests are needed. 

### How I measure participation
The factors we consider include, but not limited to the following: 
•	Classroom attendance 
•	OH attendance (with TAs or instructor)
•	Online discussion 
We expect a student to participate in some of the above activities (not necessarily all). 

**Do NOT ask for our formula** on how we calculate the participation points – as it is difficult to figure out one to cover all the above factors. You will need to trust that the instructor will give fair participation points. If you disagree with your participation points after the grade is out, talk to the instructor. 

### How I determine the final grades 

https://fxlin.github.io/final-grades.pdf

## PIAZZA 

Class link: https://piazza.com/virginia/spring2024/24spoperatingsystems/home

Sign up: https://piazza.com/virginia/spring2024/24spoperatingsystems Code: 666666

### Service level agreement

**The instruction team is committed to response Piazza questions:** 

* During business hours (8a-5p): < 2 hours

* Out of business hours, on days when UVA is open: next day
* Weekends, UVA holidays: no guarantee, with best efforts

The response time is independent of any upcoming deadline. 

**Note:** Raise questions well before the deadlines. Do NOT expect a faster response just because it's right before the deadline. 



## COURSE CONTENTS

### Overall goals
•	Cover the core & modern OS concepts (e.g. virtual machines) and leaves out old ones (e.g. disk scheduling) 
•	Teach via first-hand, real-hardware programming experience more than lectures  


### Who is this for? 
Students 1) who want to be informed programmers or 2) who are interested in systems programming.  

### Prerequisites 
C programming; use of Linux; registers; assembly basics; memory hierarchy; virtual memory

### Detailed course goals
This course will cover the fundamentals of operating systems. It will focus on key operating systems concepts and components, including process, virtual memory, concurrency, and file system. It will also introduce modern operating system designs as response to emerging hardware trends — manycore, energy efficiency, security, etc. 

This course will convey useful techniques in system software construction through hands-on projects, as well as important design principles commonly seen in system software, including abstraction, modularity, policy vs mechanism, interface vs implementation, etc. 

### Reading 
There is no official textbook. If you insist on having one:
Operating Systems: Three Easy Pieces, Remzi H. Arpaci-Dusseau and Andrea C. Arpaci-Dusseau 



## **POLICIES** 

### Honor 

I trust every student in this course to fully comply with all of the provisions of the University’s Honor Code. By enrolling in this course, you have agreed to abide by and uphold the Honor System of the University of Virginia. 

### Use of generative AI (e.g. ChatGPT)

**Allowed**: If you use ChatGPT as a way to collect info (like Google) and put together the answer in your own language/code. If you did so, you must clearly state in the submission, including what info is from ChatGPT and how it is used. 

**Not allowed:** copy & paste from ChatGPT, it is unacceptable. 

### Whiteboard only collaboration 

is meant to convey the type of discussion where participants gather around a whiteboard to solve a problem together, without taking any notes from their discussion, and then erasing the whiteboard before they disperse.

In particular, you may discuss problems and solutions, but the only thing you may take away from your discussion is your brain. This means you may not produce any records or artifacts from your collaborations, including: notes, screenshots, photos, figures, audio/video recordings, documents (inluding google docs), links, or any other digital or tangible thing. Nor may you share any files, links, etc. with other students outside of a collaboration session. Any substantially similar expression of the same solution can only occur if collaboration extends beyond whiteboard only, and so will be considered as evidence of a policy violation.

In your submission, please clearly state the students you had discussion with. 

*(adopted from policy by Dr. Nathan Brunelle for DSA2, under CC-BY-NC-SA 4.0)*

### Disabilities 

The University of Virginia strives to provide accessibility to all students. If you require an accommodation to fully access this course, please contact the Student Disability Access Center (SDAC) at (434) 243-5180 or [sdac@virginia.edu](mailto:sdac@virginia.edu). If you are unsure if you require an accommodation, or to learn more about their services, you may contact the SDAC at the number above or by visiting their website at http://studenthealth.virginia.edu/student-disability-access-center/faculty-staff. 

### Your wellbeing 

The Computer Science Department and SEAS aims to promote their students’ wellbeing. If you are feeling overwhelmed, stressed, or isolated, there are many individuals here who are ready and wanting to help. If you wish, you can make an appointment with me and come to my office to talk in private. 

Alternatively, there are also other University of Virginia resources available. The Student Health Center offers Counseling and Psychological Services (CAPS) for its students. Call 434-243-5150 or 434-972-7004 for after hours and weekend crisis assistance) to get started and schedule an appointment. If you prefer to speak anonymously and confidentially over the phone, call Madison House’s HELP Line at any hour of any day: 434-295-8255. 

If you or someone you know is struggling with gender, sexual, or domestic violence, there are many community and University of Virginia resources available. The Office of the Dean of Students, Sexual Assault Resource Agency (SARA), Shelter for Help in Emergency (SHE), and UVA Women’s Center are ready and eager to help. Contact the Director of Sexual and Domestic Violence Services at 434-982-2774. 

### Diversity 

It is the instructors’ intent that students from all diverse backgrounds and perspectives be well served by this course, that students’ learning needs be addressed both in and out of class, and that the diversity that students bring to this class be viewed as a resource, strength and benefit. It is my intent to present materials and activities that are respectful of diversity: gender, sexuality, disability, age, socioeconomic status, ethnicity, race, and culture. Your suggestions are encouraged and appreciated. Please let me know ways to improve the effectiveness of the course for you personally or for other students or student groups. 

### Religious accommodations 

It is the University’s long-standing policy and practice to reasonably accommodate students so that they do not experience an adverse academic consequence when sincerely held religious beliefs or observances conflict with academic requirements. Students who wish to request academic accommodation for a religious observance should submit their request in writing directly to me by email as far in advance as possible. Students and instructors who have questions or concerns about academic accommodations for religious observance or religious beliefs may contact the University’s Office for Equal Opportunity and Civil Rights (EOCR) at [UVAEOCR@virginia.edu](mailto:UVAEOCR@virginia.edu) or 434-924-3200. Accommodations do not relieve you of the responsibility for completion of any part of the coursework missed as the result of a religious observance. 

### Power-based personal violence 

The University of Virginia is dedicated to providing a safe and equitable learning environment for all students. To that end, it is vital that you know two values that I and the University hold as critically important: 

1. Power-based personal violence will not be tolerated. 
2. Everyone has a responsibility to do their part to maintain a safe community on Grounds. 

If you or someone you know has been affected by power-based personal violence, more information can be found on the UVA Sexual Violence website that describes reporting options and resources available - [www.virginia.edu/sexualviolence](http://www.virginia.edu/sexualviolence). 

As your professor and as a person, know that I care about you and your well-being and stand ready to provide support and resources as I can. As a faculty member, I am a responsible employee, which means that I am required by University policy and federal law to report what you tell me to the University's Title IX Coordinator. The Title IX Coordinator's job is to ensure that the reporting student receives the resources and support that they need, while also reviewing the information presented to determine whether further action is necessary to ensure survivor safety and the safety of the University community. If you would rather keep this information confidential, there are Confidential Employees you can talk to on Grounds (See http://www.virginia.edu/justreportit/confidential_resources.pdf). The worst possible situation would be for you or your friend to remain silent when there are so many here willing and able to help. 