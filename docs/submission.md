# Requirements for Submissions

Updated: 01/16/25

- [Quick reference](#quick-reference)
- [Detailed instructions](#detailed-instructions)
    - [1. Prepare your contents](#1-prepare-your-contents)
    - [2. Generate a tarball](#2-generate-a-tarball)
    - [3. What are the requirements for photo/video deliverables?](#3-what-are-the-requirements-for-photovideo-deliverables)
        - [Photos](#photos)
        - [Videos](#videos)
    - [4. What are the requirements for writeups?](#4-what-are-the-requirements-for-writeups)

## Quick reference 

For the first time (already done for VM users):
```shell
sudo apt install -y imagemagick ffmpeg
```

**Every time you want to submit**

```shell
$ COMPUTING_ID="xl6yq" scripts/prep-submission.sh
```

## Detailed instructions

### 1. Prepare your contents

A lab submission will typically include the following: 

- DELIVERABLES. 

- SOURCE CODE. 

- WRITEUP (if asked). 


Assume the current repo is under `~/uva-os-world1`; this directory is where you clone the lab code repo to, so change it to the actual path. 

Put DELIVERABLES under `~/uva-os-world1/DELIVERABLE/` which should contain the following directory structure, e.g. 

```
~/uva-os-world1/
    +--- DELIVERABLE/
        Quest00/
        +--- 1.jpg
        +--- 2.video
        Quest01/
        +--- 1.jpg
        +--- 2.jpg
        ... 
        Quest03/
        +----1.pdf
        ... 
```

For any writeup that is about the entire lab (not a specific quest), 
put it directly under `~/uva-os-world1/DELIVERABLE`.

### 2. Generate a tarball

Run the following command
(assuming your code is under ~/uva-os-world1 and your computing ID is xl6yq):


```
cd ~/uva-os-world1
$ COMPUTING_ID="xl6yq" ./scripts/prep-submission.sh
All conditions met: All files are smaller than 50MB, DELIVERABLE directory exists, and no empty files in DELIVERABLE.
Tarball created at
-rw-r--r-- 1 xzl xzl 136K Nov  6 20:56 /tmp/Lab1-xl6yq.tar.gz
Now double check the content of **/tmp/Lab1-xl6yq.tar.gz**, and submit it to Canvas.
```

The script will pack source code but any binaries in the tarball. In the example, the tarball is saved as **/tmp/Lab1-xl6yq.tar.gz**
The above script will run several sanity checks on the submission. 
Note the check may not be 100%. You still need to verify the contents of the tarball.

- Each submission must be a single tarball (.tar.gz) file.
- Deliverables must be in separate subdirectories, one for each quest. They must be numbered.
- The tarball should be named `LabX-StudentID.tar.gz` where `X` is the lab number and `StudentID` is the student's UVA login. For team submissions, name it `LabX-StudentID1-StudentID2.tar.gz`.

Upload the tarball to Canvas per the syllabus instructions.

### 3. What are ther requirements for photo/video deliverables?

Photos and videos: 

- Must be captured with student smartphones (NO screen recording tools).- UVA ID card must be displayed,  clearly visible, in all photos and videos.
- If multiple students are involved in the submission, only one ID card needs to be displayed. 
- **No post-editing allowed.** If the photo or video is too long or large, adjust smartphone settings and recapture.

#### Photos:
- Minimum resolution: 1024x1024 pixels. 
    - prep-submission.sh will help check this
- Must be viewable on Windows or Mac without special software.

**Violation: will not be graded.**

#### Videos:
- Minimum resolution: 1024x1024 pixels. 
- Higher resolution is acceptable, but a single video file must not exceed 50MB.
- Duration: 5-10 seconds.
    - prep-submission.sh will help check all the above
- Must be viewable on Windows or Mac without special software.

**Violation: will not be graded.**

Sample (your resolution should meet the above requirements):

![Sample](video-sample.gif)

### 4. What are ther requirements for writeups?

- Must be in PDF or TXT format.
- Shall not exceed one page, unless otherwise specified.

**Violation: will not grade.**
