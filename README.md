# Objective-C ARC Memory Leak Example

This repository demonstrates a common and subtle memory leak that can occur in Objective-C when using Automatic Reference Counting (ARC).  The example showcases a simple class with a `strong` property that, without proper management, can lead to retained objects and ultimately, memory leaks. 

The `bug.m` file contains the problematic code, while `bugSolution.m` provides a corrected version.  The solution emphasizes proper object lifecycle management and the importance of understanding how ARC handles object ownership.