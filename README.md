## miniboard: storyboard and narration document creation 

**miniboard** is a simple way to create content for storyboards and narration
documents for short videos.

The idea is to make the content easily editable in any text editor, and leave
the document creation to these scripts.

Most of the content is contained within the `video.json` file, which has
simple data structures for images, video descriptions, and narration for
each frame.

How to do it:

- Edit `video.json`, following the example format. Add or delete frames
  as you need to. If you want to include a thumbnail image, put one
  in the `thumbnails` directory, and then include the name of that file
  as the value for the `'img'` property in a frame.
- run `make`
- open the `narration.pdf` or the `storyboard.pdf` files
- run `make clean` to clean up

