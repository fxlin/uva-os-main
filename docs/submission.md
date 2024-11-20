# Requirements for Submissions

## Quick reference 

Only for the first time 
```shell
sudo apt install -y imagemagick ffmpeg
```

Prepare a tarball for submission

```shell
cd ~/os-lab1
$ COMPUTING_ID="xl6yq" ./prep-submission.sh
All conditions met: All files are smaller than 50MB, DELIVERABLE directory exists, and no empty files in DELIVERABLE.
Tarball created at
-rw-r--r-- 1 xzl xzl 136K Nov  6 20:56 /tmp/Lab1-xl6yq.tar.gz
Now double check the content of /tmp/Lab1-xl6yq.tar.gz, and submit it to Canvas.
```

## What should a submission look like?

A lab submission will typically include the following: 

- DELIVERABLES. 

- SOURCE CODE. 

- WRITEUP (if asked). 


Assume the current repo is `~/os-lab1`.

Put DELIVERABLES under `~/os-lab1/DELIVERABLE/` which already contains the directory structure, e.g. 

```
~/os-lab1/
    +--- DELIVERABLE/
        Quest0/
        +--- 1.jpg
        +--- 2.video
        Quest1/
        +--- 1.jpg
        +--- 2.jpg
        ... 
        Quest3/
        +----1.pdf
        ... 
```

To prepare the submission, run the following command:

```
cd ~/os-lab1
$ COMPUTING_ID="xl6yq" ./prep-submission.sh
All conditions met: All files are smaller than 50MB, DELIVERABLE directory exists, and no empty files in DELIVERABLE.
Tarball created at
-rw-r--r-- 1 xzl xzl 136K Nov  6 20:56 /tmp/Lab1-xl6yq.tar.gz
Now double check the content of /tmp/Lab1-xl6yq.tar.gz, and submit it to Canvas.
```

The script will pack source code but any binaries in the tarball.
The above script will run several sanity checks on the submission. 
Note the check may not be 100%. You still need to verify the contents of the tarball.

- Each submission must be a single tarball (.tar.gz) file.
- Deliverables must be in separate subdirectories, one for each quest. They must be numbered.
- The tarball should be named `LabX-StudentID.tar.gz` where `X` is the lab number and `StudentID` is the student's UVA login. For team submissions, name it `LabX-StudentID1-StudentID2.tar.gz`.


## What are ther requirements for photo/video deliverables?

Photos and videos: 

- Must be captured with student smartphones (NO screen recording tools).- UVA ID card must be displayed,  clearly visible, in all photos and videos.
- If multiple students are involved in the submission, only one ID card needs to be displayed. 
- **No post-editing allowed.** If the photo or video is too long or large, adjust smartphone settings and recapture.

### Photos:
- Minimum resolution: 1024x1024 pixels. 
    - prep-submission.sh will help check this
- Must be viewable on Windows or Mac without special software.

**Violation: will not grade.**

### Videos:
- Minimum resolution: 1024x1024 pixels. 
- Higher resolution is acceptable, but a single video file must not exceed 50MB.
- Duration: 5-10 seconds.
    - prep-submission.sh will help check all the above
- Must be viewable on Windows or Mac without special software.

**Violation: will not grade.**

### Sample:

![Sample](video-sample.gif)

## Deliverables: Writeup

- Must be in PDF or TXT format.
- Shall not exceed one page, unless otherwise specified.

**Violation: will not grade.**